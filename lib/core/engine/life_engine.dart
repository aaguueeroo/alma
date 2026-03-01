import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/education_state.dart';
import 'package:alma/core/models/work_state.dart';
import 'package:alma/core/models/social_state.dart';
import 'package:alma/app/constants/log_narratives.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/simulation/action_processor.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/work_engine.dart';
import 'package:alma/core/engine/social_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:alma/app/constants/time_constants.dart';
import 'package:uuid/uuid.dart';

const int _kSocialGenericActionRngOffset = 600;

class LifeEngine {
  LifeEngine({
    required this.actionProcessor,
    required this.eventEngine,
    required this.educationEngine,
    required this.workEngine,
    required this.socialEngine,
  });

  final ActionProcessor actionProcessor;
  final EventEngine eventEngine;
  final EducationEngine educationEngine;
  final WorkEngine workEngine;
  final SocialEngine socialEngine;
  static const Uuid _uuid = Uuid();

  Life createLife({
    required String soulId,
    required LifeTemplate template,
    required int seed,
    int? initialTimeRemaining,
  }) {
    final int timeRemaining = initialTimeRemaining ?? kDaysPerYear;
    final List<Relationship> startingRelationships = template.startingNpcs
        .map((npc) => Relationship(
              npc: npc,
              relationshipTypeId: npc.relationshipTypeId,
            ))
        .toList();
    SocialState? socialState = socialEngine.isLoaded
        ? socialEngine.initializeSocial(startingRelationships)
        : null;
    LifeState initialState = LifeState(
      currentYear: 1,
      age: kStartingAge,
      health: template.startingHealth,
      money: template.startingMoney,
      timeRemaining: timeRemaining,
      skills: template.startingSkills,
      traits: template.startingTraits,
      habits: [],
      relationships: startingRelationships,
      sections: template.startingSections,
      hiddenMetrics: const HiddenMetrics(),
      educationState: const EducationState(),
      workState: const WorkState(),
      socialState: socialState,
      logs: [
        GameLog(
          age: kStartingAge,
          message: LogNarratives.lifeBorn,
          category: LogCategory.life,
        ),
      ],
    );
    if (socialState != null && socialEngine.isLoaded) {
      final SeededRandom rng = SeededRandom(
        seed + 1 * _kSocialGenericActionRngOffset + kStartingAge,
      );
      final List<String> genericIds =
          socialEngine.pickYearlyGenericActionIds(initialState, rng);
      socialState = socialState.copyWith(genericActionIdsThisYear: genericIds);
      final List<Relationship> rels = socialState.relationships;
      final List<Relationship> relsWithActions = rels.map((Relationship rel) {
        final List<String> actionIds =
            socialEngine.pickYearlyActionIdsForNpc(rel, initialState, rng);
        return rel.copyWith(actionIdsThisYear: actionIds);
      }).toList();
      socialState = socialState.copyWith(relationships: relsWithActions);
      initialState = initialState.copyWith(socialState: socialState);
    }
    return Life(
      id: _uuid.v4(),
      soulId: soulId,
      seed: seed,
      templateId: template.id,
      state: initialState,
    );
  }

  Life performAction(Life life, GameAction action, {String? workJobContext}) {
    final SeededRandom rng = _createRng(life);
    final LifeState newState = actionProcessor.performAction(
      life.state,
      action,
      rng,
      workJobContext: workJobContext,
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
