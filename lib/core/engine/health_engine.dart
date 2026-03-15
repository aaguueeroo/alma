import 'package:alma/core/models/health/condition.dart';
import 'package:alma/core/models/health/condition_definition.dart';
import 'package:alma/core/models/health/health_action.dart';
import 'package:alma/core/models/health/health_modifier.dart';
import 'package:alma/core/models/health/health_predisposition.dart';
import 'package:alma/core/models/health/health_state.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/health/symptom.dart';
import 'package:alma/core/models/health/condition_type.dart';
import 'package:alma/core/models/habit/habit_type.dart';
import 'package:alma/core/models/health/health_action_type.dart';
import 'package:alma/core/engine/game_logger.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:alma/app/constants/log_narratives.dart';
import 'package:alma/core/models/enums/log_category.dart';

const int kHealthGeneralActionsPerYear = 4;
const double kNaturalDecayAgeFactor = 0.001;
const double kNaturalDecayMentalFactor = 0.5;
const int kAgingPenaltyStartAge = 60;
const double kAgingDegenerationBase = 0.3;
const double kBaseMortality = 0.001;
const double kAgeDeathFactor = 0.002;
const double kPhysicalDeathPenalty = 0.0005;
const double kStressDeathPenalty = 0.0003;
/// Minimum age for natural causes death. Below this, death only occurs if
/// health is depleted, max age reached, or bad habits (smoking, drinking) with
/// high strength combined with poor health.
const int kNaturalCausesMinAge = 50;
/// Habit strength threshold for "bad habits" that can cause early natural death.
const int kBadHabitStrengthThreshold = 4;

class HealthEngine {
  List<ConditionDefinition> _conditionDefinitions = [];
  List<Symptom> _symptoms = [];
  List<HealthAction> _healthActions = [];

  bool get isLoaded =>
      _conditionDefinitions.isNotEmpty &&
      _healthActions.isNotEmpty;

  void loadData({
    required List<ConditionDefinition> conditionDefinitions,
    required List<Symptom> symptoms,
    required List<HealthAction> healthActions,
  }) {
    _conditionDefinitions = conditionDefinitions;
    _symptoms = symptoms;
    _healthActions = healthActions;
  }

  HealthState initializeHealth(SeededRandom rng, int startingHealth) {
    final HealthPredisposition predisposition = HealthPredisposition(
      mentalResilience: 0.3 + rng.nextDouble() * 0.4,
      physicalResilience: 0.3 + rng.nextDouble() * 0.4,
      fitnessGenetics: 0.3 + rng.nextDouble() * 0.4,
      immuneSystem: 0.3 + rng.nextDouble() * 0.4,
      recoverySpeed: 0.3 + rng.nextDouble() * 0.4,
      addictionProneness: 0.2 + rng.nextDouble() * 0.6,
    );
    final double baseHealth = startingHealth.toDouble().clamp(0.0, 100.0);
    HealthState state = HealthState(
      physicalHealth: baseHealth,
      mentalHealth: baseHealth,
      predisposition: predisposition,
    );
    for (final def in _conditionDefinitions) {
      if (def.canDevelopAtBirth && rng.chance(def.lifetimeChance)) {
        final Condition condition = def.toCondition(startAge: 0);
        state = state.copyWith(
          conditions: [...state.conditions, condition],
          diagnosedConditionIds: [...state.diagnosedConditionIds, def.id],
        );
      }
    }
    return state;
  }

  LifeState processYearEnd(LifeState state, SeededRandom rng) {
    HealthState healthState =
        state.healthState ?? _migrateFromLegacyHealth(state);
    healthState = _applyNaturalDecay(healthState, state.age);
    final List<HealthModifier> modifiers = _aggregateModifiers(state);
    healthState = _applyModifiers(healthState, modifiers);
    healthState = _applyConditionEffects(healthState);
    healthState = _applyTreatmentEffects(healthState);
    final Set<String> conditionIdsBeforeNew =
        healthState.conditions.map((c) => c.id).toSet();
    healthState = _checkNewConditionTriggers(state, healthState, rng);
    for (final cond in healthState.conditions) {
      if (!conditionIdsBeforeNew.contains(cond.id)) {
        state = GameLogger.addLog(
          state,
          message: LogNarratives.healthConditionDeveloped(cond.name),
          category: LogCategory.health,
          tags: ['condition:${cond.id}'],
        );
      }
    }
    healthState = _applyAgingPenalty(state.age, healthState);
    final Set<String> symptomIdsBefore = healthState.symptoms.map((s) => s.id).toSet();
    healthState = _checkSymptomAppearance(healthState, state.age, rng);
    final List<Symptom> newSymptoms = healthState.symptoms
        .where((s) => !symptomIdsBefore.contains(s.id))
        .toList();
    for (final symptom in newSymptoms) {
      state = GameLogger.addLog(
        state,
        message: LogNarratives.healthSymptomAppeared(symptom.description),
        category: LogCategory.health,
        tags: ['symptom:${symptom.id}'],
      );
    }
    final Map<String, String> conditionNamesBeforeRecovery = {
      for (final c in healthState.conditions) c.id: c.name,
    };
    healthState = _checkConditionRecovery(healthState, state.age);
    final Set<String> conditionIdsAfterRecovery =
        healthState.conditions.map((c) => c.id).toSet();
    for (final entry in conditionNamesBeforeRecovery.entries) {
      if (!conditionIdsAfterRecovery.contains(entry.key)) {
        state = GameLogger.addLog(
          state,
          message: LogNarratives.healthConditionRecovered(entry.value),
          category: LogCategory.health,
          tags: ['condition_recovered:${entry.key}'],
        );
      }
    }
    final List<HealthAction> generalActions =
        pickYearlyGeneralActions(healthState, state, rng);
    healthState = healthState.copyWith(
      performedHospitalActionIds: [],
      performedGeneralActionIdsThisYear: [],
      generalActionIdsThisYear: generalActions.map((a) => a.id).toList(),
    );
    return state.copyWith(healthState: healthState);
  }

  HealthState _migrateFromLegacyHealth(LifeState state) {
    final int legacyHealth = state.health;
    final double h = legacyHealth.toDouble().clamp(0.0, 100.0);
    return HealthState(
      physicalHealth: h,
      mentalHealth: h,
      predisposition: const HealthPredisposition(),
    );
  }

  HealthState _applyNaturalDecay(HealthState state, int age) {
    final double ageDecay = age * kNaturalDecayAgeFactor;
    return state.copyWith(
      physicalHealth: (state.physicalHealth - ageDecay)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth - ageDecay * kNaturalDecayMentalFactor)
          .clamp(0.0, kMaxHealthValue.toDouble()),
    );
  }

  List<HealthModifier> _aggregateModifiers(LifeState state) {
    final List<HealthModifier> modifiers = [];
    final workState = state.workState;
    if (workState != null && workState.currentEmployments.isNotEmpty) {
      for (final emp in workState.currentEmployments) {
        modifiers.add(HealthModifier(
          source: 'job:${emp.jobId}',
          physicalDelta: -1.5,
          mentalDelta: -1.0,
          stressDelta: 2.0,
        ));
      }
    }
    if (state.educationState?.currentEnrollment != null) {
      modifiers.add(const HealthModifier(
        source: 'education',
        physicalDelta: 0,
        mentalDelta: -2.0,
        stressDelta: 3.0,
      ));
    }
    final relationships = state.socialState?.relationships ?? state.relationships;
    for (final rel in relationships) {
      if (!rel.isActive) continue;
      if (rel.value < 30) {
        modifiers.add(HealthModifier(
          source: 'relationship:${rel.npc.id}',
          physicalDelta: 0,
          mentalDelta: -3.0,
          stressDelta: 4.0,
        ));
      } else if (rel.value > 70) {
        modifiers.add(HealthModifier(
          source: 'relationship:${rel.npc.id}',
          physicalDelta: 0.5,
          mentalDelta: 2.0,
          stressDelta: -1.0,
        ));
      }
    }
    for (final habit in state.habits) {
      if (habit.strength < 3) continue;
      switch (habit.type) {
        case HabitType.exercise:
          modifiers.add(const HealthModifier(
            source: 'habit:exercise',
            physicalDelta: 3.0,
            mentalDelta: 2.0,
            stressDelta: -2.0,
          ));
          break;
        case HabitType.smoking:
          modifiers.add(const HealthModifier(
            source: 'habit:smoking',
            physicalDelta: -2.0,
            mentalDelta: 0,
            stressDelta: 1.0,
          ));
          break;
        case HabitType.meditation:
          modifiers.add(const HealthModifier(
            source: 'habit:meditation',
            physicalDelta: 0.5,
            mentalDelta: 3.0,
            stressDelta: -3.0,
          ));
          break;
        case HabitType.volunteering:
          modifiers.add(const HealthModifier(
            source: 'habit:volunteering',
            physicalDelta: 0,
            mentalDelta: 2.0,
            stressDelta: -1.0,
          ));
          break;
        case HabitType.drinking:
          modifiers.add(const HealthModifier(
            source: 'habit:drinking',
            physicalDelta: -1.0,
            mentalDelta: -0.5,
            stressDelta: 0.5,
          ));
          break;
        default:
          break;
      }
    }
    return modifiers;
  }

  HealthState _applyModifiers(
    HealthState state,
    List<HealthModifier> modifiers,
  ) {
    double physicalDelta = 0;
    double mentalDelta = 0;
    double stressDelta = 0;
    for (final m in modifiers) {
      physicalDelta += m.physicalDelta;
      mentalDelta += m.mentalDelta;
      stressDelta += m.stressDelta;
    }
    return state.copyWith(
      physicalHealth: (state.physicalHealth + physicalDelta)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth + mentalDelta)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      stress: (state.stress + stressDelta).clamp(0.0, 100.0),
    );
  }

  HealthState _applyConditionEffects(HealthState state) {
    double physicalDelta = 0;
    double mentalDelta = 0;
    for (final cond in state.conditions) {
      if (cond.isTreated) continue;
      physicalDelta += cond.physicalHealthEffect;
      mentalDelta += cond.mentalHealthEffect;
    }
    return state.copyWith(
      physicalHealth: (state.physicalHealth + physicalDelta)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth + mentalDelta)
          .clamp(0.0, kMaxHealthValue.toDouble()),
    );
  }

  HealthState _applyTreatmentEffects(HealthState state) {
    double physicalRecovery = 0;
    double mentalRecovery = 0;
    for (final cond in state.conditions) {
      if (!cond.isTreated) continue;
      physicalRecovery += 1.0;
      mentalRecovery += 1.0;
    }
    return state.copyWith(
      physicalHealth: (state.physicalHealth + physicalRecovery)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth + mentalRecovery)
          .clamp(0.0, kMaxHealthValue.toDouble()),
    );
  }

  HealthState _checkNewConditionTriggers(
    LifeState state,
    HealthState healthState,
    SeededRandom rng,
  ) {
    for (final def in _conditionDefinitions) {
      if (state.age < def.minAgeToDevelop || state.age > def.maxAgeToDevelop) {
        continue;
      }
      if (healthState.conditions.any((c) => c.id == def.id)) continue;
      double chance = def.lifetimeChance / 50;
      if (def.type == ConditionType.mental) {
        chance *= 1.0 - healthState.predisposition.mentalResilience * 0.5;
      } else {
        chance *= 1.0 - healthState.predisposition.physicalResilience * 0.5;
      }
      if (healthState.physicalHealth < 50) chance *= 1.2;
      if (healthState.mentalHealth < 50) chance *= 1.2;
      if (rng.chance(chance)) {
        final Condition condition = def.toCondition(startAge: state.age);
        healthState = healthState.copyWith(
          conditions: [...healthState.conditions, condition],
        );
      }
    }
    return healthState;
  }

  HealthState _applyAgingPenalty(int age, HealthState state) {
    if (age < kAgingPenaltyStartAge) return state;
    final double healthProtection = state.physicalHealth * 0.01;
    final double degenerationRate = kAgingDegenerationBase - healthProtection;
    return state.copyWith(
      physicalHealth: (state.physicalHealth - degenerationRate)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth - degenerationRate * 0.5)
          .clamp(0.0, kMaxHealthValue.toDouble()),
    );
  }

  HealthState _checkSymptomAppearance(
    HealthState state,
    int age,
    SeededRandom rng,
  ) {
    final List<Symptom> newSymptoms = [];
    for (final cond in state.conditions) {
      if (state.diagnosedConditionIds.contains(cond.id)) continue;
      for (final symptomId in cond.symptomIds) {
        final Symptom? symptom = _symptoms
            .where((s) => s.id == symptomId && s.conditionId == cond.id)
            .firstOrNull;
        if (symptom == null) continue;
        if (state.symptoms.any((s) => s.id == symptom.id)) continue;
        if (rng.chance(0.3)) {
          newSymptoms.add(symptom.copyWith(appearedAtAge: age));
        }
      }
    }
    if (newSymptoms.isEmpty) return state;
    return state.copyWith(
      symptoms: [...state.symptoms, ...newSymptoms],
    );
  }

  HealthState _checkConditionRecovery(HealthState state, int age) {
    final List<Condition> updated = [];
    for (final cond in state.conditions) {
      if (cond.isChronic) {
        updated.add(cond);
        continue;
      }
      final def = _conditionDefinitions
          .where((d) => d.id == cond.id)
          .firstOrNull;
      if (def == null || def.averageDurationYears == null) {
        updated.add(cond);
        continue;
      }
      final int startAge = cond.startAge ?? age;
      if (age - startAge >= def.averageDurationYears! && cond.isTreated) {
        continue;
      }
      updated.add(cond);
    }
    return state.copyWith(conditions: updated);
  }

  LifeState checkDeath(LifeState state, SeededRandom rng) {
    if (state.isDead) return state;
    final HealthState? healthState = state.healthState;
    final int health = healthState?.totalHealth.round() ?? state.health;
    if (health <= 0) {
      state = GameLogger.addLog(
        state,
        message: LogNarratives.lifeDiedHealth,
        category: LogCategory.life,
      );
      return state.copyWith(isDead: true, causeOfDeath: 'Health depleted');
    }
    if (state.age >= kMaxAge) {
      state = GameLogger.addLog(
        state,
        message: LogNarratives.lifeDiedOldAge,
        category: LogCategory.life,
      );
      return state.copyWith(isDead: true, causeOfDeath: 'Old age');
    }
    final double? deathChance = _computeNaturalCausesDeathChance(state, healthState);
    if (deathChance != null && rng.chance(deathChance)) {
      state = GameLogger.addLog(
        state,
        message: LogNarratives.lifeDiedNatural,
        category: LogCategory.life,
      );
      return state.copyWith(isDead: true, causeOfDeath: 'Natural causes');
    }
    return state;
  }

  /// Returns the chance of natural causes death, or null if natural causes
  /// death should not be possible (e.g. young and healthy with no bad habits).
  double? _computeNaturalCausesDeathChance(LifeState state, HealthState? healthState) {
    final double physical = healthState?.physicalHealth ?? state.health.toDouble();
    final double stress = healthState?.stress ?? 0;
    final bool hasBadHabits = state.habits.any((h) =>
        (h.type == HabitType.smoking || h.type == HabitType.drinking) &&
        h.strength >= kBadHabitStrengthThreshold);
    if (state.age < kNaturalCausesMinAge) {
      if (physical >= 70 && !hasBadHabits) {
        return null;
      }
      final double physicalPenalty = (100 - physical) * kPhysicalDeathPenalty;
      final double stressPenalty = stress * kStressDeathPenalty;
      final double badHabitPenalty = hasBadHabits ? 0.002 : 0;
      return physicalPenalty + stressPenalty + badHabitPenalty;
    }
    final double ageFactor =
        (state.age > 50 ? state.age - 50 : 0) * kAgeDeathFactor;
    final double physicalPenalty = (100 - physical) * kPhysicalDeathPenalty;
    final double stressPenalty = stress * kStressDeathPenalty;
    return kBaseMortality + ageFactor + physicalPenalty + stressPenalty;
  }

  List<HealthAction> getAvailableHospitalActions(HealthState? healthState) {
    final List<String> performed =
        healthState?.performedHospitalActionIds ?? [];
    return _healthActions
        .where((a) =>
            a.type == HealthActionType.hospital &&
            !performed.contains(a.id))
        .toList();
  }

  List<HealthAction> getHealthActionsByIds(List<String> ids) {
    final Map<String, HealthAction> byId = {
      for (final a in _healthActions) a.id: a,
    };
    return ids.map((id) => byId[id]).whereType<HealthAction>().toList();
  }

  List<HealthAction> pickYearlyGeneralActions(
    HealthState healthState,
    LifeState lifeState,
    SeededRandom rng,
  ) {
    final List<HealthAction> general = _healthActions
        .where((a) => a.type == HealthActionType.general)
        .toList();
    if (general.length <= kHealthGeneralActionsPerYear) {
      return general;
    }
    final List<HealthAction> picked = [];
    final List<HealthAction> pool = List.from(general);
    for (int i = 0; i < kHealthGeneralActionsPerYear && pool.isNotEmpty; i++) {
      final int idx = rng.nextInt(pool.length);
      picked.add(pool.removeAt(idx));
    }
    return picked;
  }

  HealthState performHospitalAction(
    HealthState state,
    HealthAction action,
    LifeState lifeState,
    SeededRandom rng,
  ) {
    HealthState newState = state.copyWith(
      physicalHealth: (state.physicalHealth + action.physicalHealthEffect)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth + action.mentalHealthEffect)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      performedHospitalActionIds: [
        ...state.performedHospitalActionIds,
        action.id,
      ],
    );
    for (final condId in action.canDiagnoseConditionIds) {
      if (newState.diagnosedConditionIds.contains(condId)) continue;
      final cond = newState.conditions.where((c) => c.id == condId).firstOrNull;
      if (cond == null) continue;
      if (rng.chance(0.7)) {
        newState = newState.copyWith(
          diagnosedConditionIds: [...newState.diagnosedConditionIds, condId],
          conditions: newState.conditions.map((c) {
            if (c.id == condId) return c.copyWith(isDiagnosed: true);
            return c;
          }).toList(),
        );
      }
    }
    for (final condId in action.canTreatConditionIds) {
      final cond = newState.conditions.where((c) => c.id == condId).firstOrNull;
      if (cond == null || !cond.isDiagnosed) continue;
      if (rng.chance(0.5)) {
        newState = newState.copyWith(
          conditions: newState.conditions.map((c) {
            if (c.id == condId) return c.copyWith(isTreated: true);
            return c;
          }).toList(),
        );
      }
    }
    return newState;
  }

  HealthState performGeneralAction(
    HealthState state,
    HealthAction action,
  ) {
    return state.copyWith(
      physicalHealth: (state.physicalHealth + action.physicalHealthEffect)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      mentalHealth: (state.mentalHealth + action.mentalHealthEffect)
          .clamp(0.0, kMaxHealthValue.toDouble()),
      performedGeneralActionIdsThisYear: [
        ...state.performedGeneralActionIdsThisYear,
        action.id,
      ],
    );
  }

  double getTimeCostMultiplier(HealthState? healthState) {
    if (healthState == null) return 1.0;
    double multiplier = 1.0;
    for (final cond in healthState.conditions) {
      if (!cond.isTreated) {
        multiplier *= cond.timeCostMultiplier;
      }
    }
    return multiplier;
  }
}
