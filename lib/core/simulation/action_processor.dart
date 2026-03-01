import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/employment.dart';
import 'package:alma/core/models/work_state.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/work_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/rules/trait_rules.dart';
import 'package:alma/core/simulation/relationship_processor.dart';
import 'package:alma/core/simulation/habit_processor.dart';
import 'package:alma/app/constants/game_constants.dart';

class ActionProcessor {
  ActionProcessor({
    required this.timeEngine,
    required this.eventEngine,
    required this.educationEngine,
    required this.workEngine,
    required this.traitRules,
    required this.relationshipProcessor,
    required this.habitProcessor,
  });

  final TimeEngine timeEngine;
  final EventEngine eventEngine;
  final EducationEngine educationEngine;
  final WorkEngine workEngine;
  final TraitRules traitRules;
  final RelationshipProcessor relationshipProcessor;
  final HabitProcessor habitProcessor;

  LifeState performAction(
    LifeState state,
    GameAction action,
    SeededRandom rng, {
    String? workJobContext,
  }) {
    state = timeEngine.consumeTime(state, action);
    state = _applySkillChanges(state, action);
    state = _applyHealthChange(state, action);
    state = _applySectionPerformance(state, action, workJobContext: workJobContext);
    if (workJobContext != null && action.category == ActionCategory.work) {
      state = _recordWorkActionPerformed(state, action, workJobContext);
    }
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
    state = educationEngine.processYearEnd(state, rng);
    state = workEngine.processYearEnd(state, rng);
    state = relationshipProcessor.applyYearlyDecay(state);
    state = habitProcessor.processYearEnd(state);
    state = timeEngine.startNewYear(state);
    state = educationEngine.checkAutoEnrollment(state);
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

  LifeState _applySectionPerformance(
    LifeState state,
    GameAction action, {
    String? workJobContext,
  }) {
    if (action.sectionPerformanceEffect == 0) return state;
    final SectionType targetSection = SectionType.values.firstWhere(
      (s) => s.name == action.category.name,
      orElse: () => SectionType.education,
    );
    if (targetSection == SectionType.work) {
      final WorkState? workState = state.workState;
      if (workState == null || workState.currentEmployments.isEmpty) {
        return state;
      }
      final List<Employment> updated = workState.currentEmployments
          .map((Employment e) {
            final bool appliesToJob = action.workJobId == null ||
                action.workJobId == e.jobId;
            final bool inContext = workJobContext == null ||
                e.jobId == workJobContext;
            if (!appliesToJob || !inContext) return e;
            final int newPerformance =
                (e.performance + action.sectionPerformanceEffect)
                    .clamp(kMinSectionPerformance, kMaxSectionPerformance);
            return e.copyWith(performance: newPerformance);
          })
          .toList();
      return state.copyWith(
        workState: workState.copyWith(currentEmployments: updated),
      );
    }
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

  LifeState _recordWorkActionPerformed(
    LifeState state,
    GameAction action,
    String jobId,
  ) {
    final WorkState? workState = state.workState;
    if (workState == null) return state;
    final List<GameAction> existing =
        workState.performedActionsByJobIdThisYear[jobId] ?? [];
    final Map<String, List<GameAction>> updated =
        Map<String, List<GameAction>>.from(
      workState.performedActionsByJobIdThisYear,
    );
    updated[jobId] = [...existing, action];
    return state.copyWith(
      workState: workState.copyWith(
        performedActionsByJobIdThisYear: updated,
      ),
    );
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
