import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/rules/trait_rules.dart';
import 'package:alma/core/simulation/relationship_processor.dart';
import 'package:alma/core/simulation/habit_processor.dart';
import 'package:alma/app/constants/game_constants.dart';

class ActionProcessor {
  ActionProcessor({
    required this.timeEngine,
    required this.eventEngine,
    required this.traitRules,
    required this.relationshipProcessor,
    required this.habitProcessor,
  });

  final TimeEngine timeEngine;
  final EventEngine eventEngine;
  final TraitRules traitRules;
  final RelationshipProcessor relationshipProcessor;
  final HabitProcessor habitProcessor;

  LifeState performAction(
    LifeState state,
    GameAction action,
    SeededRandom rng,
  ) {
    state = timeEngine.consumeTime(state, action);
    state = _applySkillChanges(state, action);
    state = _applyHealthChange(state, action);
    state = _applySectionPerformance(state, action);
    state = relationshipProcessor.processAction(state, action, rng);
    state = habitProcessor.process(state, action);
    state = traitRules.checkEvolution(state, action, rng);
    state = _updateHiddenMetrics(state, action);
    state = _recordMoralImpacts(state, action);
    final pendingEvent = eventEngine.checkTriggers(state, rng);
    if (pendingEvent != null) {
      return state.copyWith(pendingEvent: pendingEvent);
    }
    state = _checkDeathConditions(state, rng);
    return state;
  }

  LifeState processNextYear(LifeState state, SeededRandom rng) {
    state = relationshipProcessor.applyYearlyDecay(state);
    state = habitProcessor.processYearEnd(state);
    state = timeEngine.startNewYear(state);
    state = _checkAgeBasedDeath(state, rng);
    return state;
  }

  LifeState _applySkillChanges(LifeState state, GameAction action) {
    var skills = state.skills;
    for (final entry in action.skillEffects.entries) {
      skills = skills.withChange(entry.key, entry.value);
    }
    return state.copyWith(skills: skills);
  }

  LifeState _applyHealthChange(LifeState state, GameAction action) {
    if (action.healthEffect == 0) return state;
    final int newHealth = (state.health + action.healthEffect)
        .clamp(kMinHealthValue, kMaxHealthValue);
    return state.copyWith(health: newHealth);
  }

  LifeState _applySectionPerformance(LifeState state, GameAction action) {
    if (action.sectionPerformanceEffect == 0) return state;
    final SectionType targetSection = SectionType.values.firstWhere(
      (s) => s.name == action.category.name,
      orElse: () => SectionType.education,
    );
    final sections = state.sections.map((section) {
      if (section.type == targetSection) {
        final int newPerformance =
            (section.performance + action.sectionPerformanceEffect)
                .clamp(kMinSectionPerformance, kMaxSectionPerformance);
        return section.copyWith(performance: newPerformance);
      }
      return section;
    }).toList();
    return state.copyWith(sections: sections);
  }

  LifeState _updateHiddenMetrics(LifeState state, GameAction action) {
    var metrics = state.hiddenMetrics;
    for (final entry in action.hiddenMetricEffects.entries) {
      metrics = metrics.withChange(entry.key, entry.value);
    }
    return state.copyWith(hiddenMetrics: metrics);
  }

  LifeState _recordMoralImpacts(LifeState state, GameAction action) {
    if (action.moralImpactTemplates.isEmpty) return state;
    final List<MoralImpact> newImpacts = action.moralImpactTemplates
        .map((t) => t.toImpact(state.currentYear))
        .toList();
    return state.copyWith(
      moralImpacts: [...state.moralImpacts, ...newImpacts],
    );
  }

  LifeState _checkDeathConditions(LifeState state, SeededRandom rng) {
    if (state.health <= 0) {
      return state.copyWith(isDead: true, causeOfDeath: 'Health depleted');
    }
    if (state.age >= kMaxAge) {
      return state.copyWith(isDead: true, causeOfDeath: 'Old age');
    }
    return state;
  }

  LifeState _checkAgeBasedDeath(LifeState state, SeededRandom rng) {
    if (state.age >= 70) {
      final double deathChance = (state.age - 70) * 0.03;
      final double healthPenalty = (100 - state.health) * 0.005;
      if (rng.chance(deathChance + healthPenalty)) {
        return state.copyWith(isDead: true, causeOfDeath: 'Natural causes');
      }
    }
    return state;
  }
}
