import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/education_state.dart';
import 'package:alma/core/simulation/action_processor.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:uuid/uuid.dart';

class LifeEngine {
  LifeEngine({
    required this.actionProcessor,
    required this.eventEngine,
    required this.educationEngine,
  });

  final ActionProcessor actionProcessor;
  final EventEngine eventEngine;
  final EducationEngine educationEngine;
  static const Uuid _uuid = Uuid();

  Life createLife({
    required String soulId,
    required LifeTemplate template,
    required int seed,
  }) {
    LifeState initialState = LifeState(
      currentYear: 1,
      age: kStartingAge,
      health: template.startingHealth,
      money: template.startingMoney,
      timeRemaining: kTimeUnitsPerYear,
      skills: template.startingSkills,
      traits: template.startingTraits,
      habits: [],
      relationships: template.startingNpcs
          .map((npc) => Relationship(npc: npc))
          .toList(),
      sections: template.startingSections,
      hiddenMetrics: const HiddenMetrics(),
      educationState: const EducationState(),
    );
    return Life(
      id: _uuid.v4(),
      soulId: soulId,
      seed: seed,
      templateId: template.id,
      state: initialState,
    );
  }

  Life performAction(Life life, GameAction action) {
    final SeededRandom rng = _createRng(life);
    final LifeState newState = actionProcessor.performAction(
      life.state,
      action,
      rng,
    );
    return life.copyWith(state: newState);
  }

  Life resolveEvent(Life life, int choiceIndex) {
    if (life.state.pendingEvent == null) return life;
    final SeededRandom rng = _createRng(life);
    final LifeState newState = eventEngine.resolveEvent(
      life.state,
      life.state.pendingEvent!,
      choiceIndex,
      rng,
    );
    return life.copyWith(state: newState);
  }

  Life progressYear(Life life) {
    final SeededRandom rng = _createRng(life);
    final LifeState newState = actionProcessor.processNextYear(
      life.state,
      rng,
    );
    return life.copyWith(state: newState);
  }

  bool isLifeOver(Life life) {
    return life.state.isDead;
  }

  SeededRandom _createRng(Life life) {
    return SeededRandom(life.seed + life.state.currentYear * 1000 + life.state.age);
  }
}
