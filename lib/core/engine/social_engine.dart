import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/social/relationship_effects.dart';
import 'package:alma/core/models/social/relationship_state.dart';
import 'package:alma/core/models/social/relationship_type.dart';
import 'package:alma/core/models/social/social_state.dart';
import 'package:alma/core/models/social/social_country_config.dart';
import 'package:alma/core/models/npc.dart';
import 'package:alma/core/models/access_condition.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/engine/game_logger.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/engine/npc_factory.dart';
import 'package:alma/app/constants/game_constants.dart';

class SocialEngine {
  SocialCountryConfig? _countryConfig;
  List<RelationshipCategory> _relationshipTypes = [];
  List<GameAction> _socialActions = [];
  NpcFactory? _npcFactory;

  static const int _actionsPerYear = kSocialActionsPerYear;

  void loadData({
    required SocialCountryConfig countryConfig,
    required List<RelationshipCategory> relationshipTypes,
    required List<GameAction> socialActions,
    required NpcFactory npcFactory,
  }) {
    _countryConfig = countryConfig;
    _relationshipTypes = relationshipTypes;
    _socialActions = socialActions;
    _npcFactory = npcFactory;
  }

  bool get isLoaded => _countryConfig != null;

  SocialState initializeSocial(List<Relationship> existingRelationships) {
    final List<Relationship> migrated = existingRelationships.map((
      Relationship rel,
    ) {
      final String typeId =
          rel.relationshipTypeId ?? _inferTypeIdFromRole(rel.npc.role.name);
      return rel.copyWith(
        relationshipTypeId: typeId,
        metrics: _defaultMetricsForType(typeId, rel.value),
      );
    }).toList();
    return SocialState(relationships: _normalizeFamilyAttraction(migrated));
  }

  /// Returns the 4 action IDs chosen for this relationship this year (used at year start or when meeting).
  List<String> pickYearlyActionIdsForNpc(
    Relationship relationship,
    LifeState state,
    SeededRandom rng,
  ) {
    final String typeId = relationship.displayTypeId;
    final List<GameAction> eligible = _socialActions.where((GameAction action) {
      if (action.relationshipTypeIds.isEmpty) return false;
      if (!action.relationshipTypeIds.contains(typeId)) return false;
      if (!_meetsAgeCondition(action, state)) return false;
      if (!_meetsConditions(action, state)) return false;
      if (!_isActionAllowedForRelationshipType(action, typeId)) return false;
      return true;
    }).toList();
    final List<GameAction> picked = _shuffleAndTake(
      eligible,
      _actionsPerYear,
      rng,
    );
    return picked.map((GameAction a) => a.id).toList();
  }

  /// Returns the per-NPC actions available this year (max 4). Performed ones are excluded; no new action takes their place until next year.
  List<GameAction> pickYearlyActionsForNpc(
    Relationship relationship,
    LifeState state,
    SeededRandom rng,
  ) {
    final List<String> idsForYear = relationship.actionIdsThisYear;
    final Set<String> usedIds = {...relationship.usedActionIdsThisYear};
    if (idsForYear.isNotEmpty) {
      final Map<String, GameAction> byId = {
        for (final GameAction a in _socialActions) a.id: a,
      };
      return idsForYear
          .where((String id) => !usedIds.contains(id))
          .map((String id) => byId[id])
          .whereType<GameAction>()
          .toList();
    }
    final String typeId = relationship.displayTypeId;
    final List<GameAction> eligible = _socialActions.where((GameAction action) {
      if (usedIds.contains(action.id)) return false;
      if (action.relationshipTypeIds.isEmpty) return false;
      if (!action.relationshipTypeIds.contains(typeId)) return false;
      if (!_meetsAgeCondition(action, state)) return false;
      if (!_meetsConditions(action, state)) return false;
      if (!_isActionAllowedForRelationshipType(action, typeId)) return false;
      return true;
    }).toList();
    return _shuffleAndTake(eligible, _actionsPerYear, rng);
  }

  /// Returns the 4 generic action IDs chosen for this year (used at year start or life creation).
  List<String> pickYearlyGenericActionIds(LifeState state, SeededRandom rng) {
    final List<GameAction> eligible = _socialActions.where((GameAction action) {
      if (action.relationshipTypeIds.isNotEmpty) return false;
      if (!_meetsAgeCondition(action, state)) return false;
      if (!_meetsConditions(action, state)) return false;
      return true;
    }).toList();
    final List<GameAction> picked = _shuffleAndTake(
      eligible,
      _actionsPerYear,
      rng,
    );
    return picked.map((GameAction a) => a.id).toList();
  }

  /// Returns the generic actions available this year (max 4). Performed ones are excluded; no new action takes their place until next year.
  List<GameAction> pickYearlyGenericActions(LifeState state, SeededRandom rng) {
    final SocialState socialState = state.socialState ?? const SocialState();
    final List<String> idsForYear = socialState.genericActionIdsThisYear;
    final Set<String> performedIds = {
      ...socialState.performedGenericActionIdsThisYear,
    };
    if (idsForYear.isNotEmpty) {
      final Map<String, GameAction> byId = {
        for (final GameAction a in _socialActions) a.id: a,
      };
      return idsForYear
          .where((String id) => !performedIds.contains(id))
          .map((String id) => byId[id])
          .whereType<GameAction>()
          .toList();
    }
    final List<GameAction> eligible = _socialActions.where((GameAction action) {
      if (performedIds.contains(action.id)) return false;
      if (action.relationshipTypeIds.isNotEmpty) return false;
      if (!_meetsAgeCondition(action, state)) return false;
      if (!_meetsConditions(action, state)) return false;
      return true;
    }).toList();
    return _shuffleAndTake(eligible, _actionsPerYear, rng);
  }

  LifeState performSocialAction(
    LifeState state,
    GameAction action,
    List<String> targetNpcIds,
    SeededRandom rng,
  ) {
    // Use legacy state.relationships when socialState is null (e.g. life created before social engine was loaded).
    SocialState socialState =
        state.socialState ?? SocialState(relationships: state.relationships);
    final bool isGeneric = action.relationshipTypeIds.isEmpty;
    if (targetNpcIds.isEmpty) {
      if (isGeneric) {
        socialState = socialState.copyWith(
          performedGenericActionIdsThisYear: [
            ...socialState.performedGenericActionIdsThisYear,
            action.id,
          ],
        );
      }
      state = state.copyWith(socialState: socialState);
      state = _applyReputationChange(
        state,
        action.relationshipEffects.reputation,
      );
      state = GameLogger.addLog(
        state,
        message: action.logMessage ?? '${action.name}.',
        category: LogCategory.social,
      );
      return state;
    }

    final List<String> acceptedNames = [];
    final List<String> acceptedNpcIds = [];

    for (final String npcId in targetNpcIds) {
      final int relIndex = socialState.relationships.indexWhere(
        (Relationship r) => r.npc.id == npcId,
      );
      if (relIndex < 0) continue;

      Relationship rel = socialState.relationships[relIndex];
      final bool npcDeclined =
          action.npcResponseChance > 0 && rng.chance(action.npcResponseChance);

      if (npcDeclined) {
        rel = _applyDeclineConsequences(rel, action);
        state = GameLogger.addLog(
          state,
          message:
              '{npc:$npcId} declined your invitation to ${action.name.toLowerCase()}.',
          category: LogCategory.social,
          tags: ['npc:$npcId'],
        );
      } else {
        rel = _applyActionMetrics(rel, action);
        acceptedNames.add(rel.npc.name);
        acceptedNpcIds.add(npcId);
      }

      rel = rel.copyWith(
        usedActionIdsThisYear: [...rel.usedActionIdsThisYear, action.id],
        usedActionIds: [...rel.usedActionIds, action.id],
      );

      final List<Relationship> updatedRels = List<Relationship>.from(
        socialState.relationships,
      );
      updatedRels[relIndex] = rel;
      socialState = socialState.copyWith(relationships: updatedRels);
    }

    if (acceptedNpcIds.isNotEmpty) {
      final String message = targetNpcIds.length > 1
          ? _formatGroupActionMessage(action, acceptedNpcIds)
          : _singleNpcLogMessage(action, acceptedNpcIds.single);
      state = GameLogger.addLog(
        state,
        message: message,
        category: LogCategory.social,
        tags: acceptedNpcIds.map((String id) => 'npc:$id').toList(),
      );
    }

    if (isGeneric) {
      socialState = socialState.copyWith(
        performedGenericActionIdsThisYear: [
          ...socialState.performedGenericActionIdsThisYear,
          action.id,
        ],
      );
    }

    socialState = socialState.copyWith(
      relationships: _normalizeFamilyAttraction(socialState.relationships),
    );
    state = state.copyWith(socialState: socialState);
    state = _applyReputationChange(
      state,
      action.relationshipEffects.reputation,
    );
    return state;
  }

  LifeState processYearEnd(LifeState state, SeededRandom rng) {
    if (_countryConfig == null) return state;
    SocialState socialState = state.socialState ?? const SocialState();

    List<Relationship> relationships = List<Relationship>.from(
      socialState.relationships,
    );

    relationships = _applyYearlyDecay(relationships);
    relationships = _applyAutoImprovement(relationships, state);
    relationships = _checkRelationshipTransitions(relationships);
    relationships = _resetYearlyTracking(relationships);
    relationships = _checkForgotten(relationships);
    relationships = _normalizeFamilyAttraction(relationships);
    relationships = relationships.map((Relationship rel) {
      final List<String> ids = pickYearlyActionIdsForNpc(rel, state, rng);
      return rel.copyWith(actionIdsThisYear: ids);
    }).toList();

    final List<String> nextYearGenericIds = pickYearlyGenericActionIds(
      state,
      rng,
    );
    socialState = socialState.copyWith(
      relationships: relationships,
      performedGenericActionIdsThisYear: [],
      genericActionIdsThisYear: nextYearGenericIds,
    );
    state = state.copyWith(socialState: socialState);

    state = _tryMeetNewNpc(state, rng);

    return state;
  }

  LifeState meetNewNpc(LifeState state, String environment, SeededRandom rng) {
    if (_npcFactory == null || _countryConfig == null) return state;
    final String country = state.lifeData['country'] as String? ?? 'default';
    final String typeId = _typeIdForEnvironment(environment, rng);
    final Npc npc = _npcFactory!.generateNpc(
      rng: rng,
      country: country,
      relationshipTypeId: typeId,
      playerAge: state.age,
    );
    final Relationship newRel = Relationship(
      npc: npc,
      relationshipTypeId: typeId,
      value: kDefaultRelationshipValue,
      metrics: _defaultMetricsForType(typeId, kDefaultRelationshipValue),
      metAt: state.age,
    );

    SocialState socialState = state.socialState ?? const SocialState();
    socialState = socialState.copyWith(
      relationships: [...socialState.relationships, newRel],
    );
    state = state.copyWith(socialState: socialState);
    final List<String> newRelActionIds = pickYearlyActionIdsForNpc(
      newRel,
      state,
      rng,
    );
    final List<Relationship> updatedRels = List<Relationship>.from(
      socialState.relationships,
    );
    updatedRels[updatedRels.length - 1] = updatedRels.last.copyWith(
      actionIdsThisYear: newRelActionIds,
    );
    state = state.copyWith(
      socialState: state.socialState!.copyWith(relationships: updatedRels),
    );
    final List<String> tags = ['npc:${npc.id}'];
    if (typeId == 'classmate') tags.add('show_in_education');
    if (typeId == 'colleague' || typeId == 'boss' || typeId == 'work_spouse') {
      tags.add('show_in_work');
    }
    state = GameLogger.addLog(
      state,
      message: 'You met {npc:${npc.id}}, a new ${_labelForTypeId(typeId)}.',
      category: LogCategory.social,
      tags: tags,
    );
    return state;
  }

  RelationshipSubtype? getSubtype(String typeId) {
    for (final RelationshipCategory cat in _relationshipTypes) {
      for (final RelationshipSubtype sub in cat.subtypes) {
        if (sub.id == typeId) return sub;
      }
    }
    return null;
  }

  String getCategoryForTypeId(String typeId) {
    for (final RelationshipCategory cat in _relationshipTypes) {
      for (final RelationshipSubtype sub in cat.subtypes) {
        if (sub.id == typeId) return cat.category;
      }
    }
    return 'friend';
  }

  List<Relationship> _applyYearlyDecay(List<Relationship> relationships) {
    return relationships.map((Relationship rel) {
      if (!rel.isActive) return rel;
      final RelationshipSubtype? subtype = getSubtype(rel.displayTypeId);
      final int decay = subtype?.decayRate ?? kRelationshipDecayPerYear;
      final double modifier = _countryConfig?.friendshipDecayModifier ?? 1.0;
      final int adjustedDecay = (decay * modifier).round();
      return rel.copyWith(
        value: (rel.value - adjustedDecay).clamp(
          kMinRelationshipValue,
          kMaxRelationshipValue,
        ),
        metrics: rel.metrics.withChange(
          affectionDelta: -adjustedDecay,
          trustDelta: -(adjustedDecay ~/ 2),
        ),
      );
    }).toList();
  }

  List<Relationship> _applyAutoImprovement(
    List<Relationship> relationships,
    LifeState state,
  ) {
    return relationships.map((Relationship rel) {
      if (!rel.isActive) return rel;
      final RelationshipSubtype? subtype = getSubtype(rel.displayTypeId);
      if (subtype == null) return rel;

      bool shouldImprove = false;
      if (subtype.autoImproveWhenCohabiting && rel.cohabiting) {
        shouldImprove = true;
      }
      if (subtype.autoImproveWhenCoworking) {
        final bool sharesWork = _sharesWorkplace(rel, state);
        final bool sharesSchool = _sharesSchool(rel, state);
        if (sharesWork || sharesSchool) shouldImprove = true;
      }

      if (!shouldImprove) return rel;
      return rel.copyWith(
        value: (rel.value + kAutoImprovePerYear).clamp(
          kMinRelationshipValue,
          kMaxRelationshipValue,
        ),
        metrics: rel.metrics.withChange(
          affectionDelta: kAutoImprovePerYear,
          trustDelta: kAutoImprovePerYear ~/ 2,
        ),
      );
    }).toList();
  }

  List<Relationship> _checkRelationshipTransitions(
    List<Relationship> relationships,
  ) {
    return relationships.map((Relationship rel) {
      if (!rel.isActive) return rel;
      final RelationshipSubtype? subtype = getSubtype(rel.displayTypeId);
      if (subtype == null) return rel;
      if (!subtype.canChangeAutomatically) return rel;
      if (subtype.transitionsTo == null) return rel;
      if (subtype.autoTransitionThreshold == null) return rel;
      if (rel.metrics.overallValue >= subtype.autoTransitionThreshold!) {
        return rel.copyWith(relationshipTypeId: subtype.transitionsTo);
      }
      return rel;
    }).toList();
  }

  List<Relationship> _resetYearlyTracking(List<Relationship> relationships) {
    return relationships.map((Relationship rel) {
      return rel.copyWith(usedActionIdsThisYear: []);
    }).toList();
  }

  List<Relationship> _checkForgotten(List<Relationship> relationships) {
    return relationships.map((Relationship rel) {
      if (!rel.isActive) return rel;
      final String category = getCategoryForTypeId(rel.displayTypeId);
      if (category == 'family') return rel;
      if (rel.metrics.overallValue <= kForgottenThreshold) {
        return rel.copyWith(isActive: false);
      }
      return rel;
    }).toList();
  }

  /// Ensures family (and any type with attractionAllowed: false) always has metrics.attraction == -100.
  List<Relationship> _normalizeFamilyAttraction(
    List<Relationship> relationships,
  ) {
    const int kFamilyAttractionValue = -100;
    return relationships.map((Relationship rel) {
      final RelationshipSubtype? subtype = getSubtype(rel.displayTypeId);
      if (subtype != null &&
          !subtype.attractionAllowed &&
          rel.metrics.attraction != kFamilyAttractionValue) {
        return rel.copyWith(
          metrics: rel.metrics.copyWith(attraction: kFamilyAttractionValue),
        );
      }
      return rel;
    }).toList();
  }

  LifeState _tryMeetNewNpc(LifeState state, SeededRandom rng) {
    if (_npcFactory == null || _countryConfig == null) return state;
    final bool isInSchool =
        state.educationState?.currentEnrollment?.isActive == true;
    final bool isWorking =
        (state.workState?.currentEmployments.isNotEmpty ?? false);

    double meetChance = _countryConfig!.meetChanceRandom;
    String environment = 'random';
    if (isInSchool && rng.chance(_countryConfig!.meetChanceSchool)) {
      meetChance = _countryConfig!.meetChanceSchool;
      environment = 'school';
    } else if (isWorking && rng.chance(_countryConfig!.meetChanceWork)) {
      meetChance = _countryConfig!.meetChanceWork;
      environment = 'work';
    } else if (rng.chance(_countryConfig!.meetChanceNeighborhood)) {
      meetChance = _countryConfig!.meetChanceNeighborhood;
      environment = 'neighborhood';
    }

    if (rng.chance(meetChance)) {
      return meetNewNpc(state, environment, rng);
    }
    return state;
  }

  String _typeIdForEnvironment(String environment, SeededRandom rng) {
    switch (environment) {
      case 'school':
        return 'classmate';
      case 'work':
        return rng.chance(0.8) ? 'colleague' : 'boss';
      case 'neighborhood':
        return 'acquaintance';
      default:
        return 'acquaintance';
    }
  }

  Relationship _applyActionMetrics(Relationship rel, GameAction action) {
    final RelationshipSubtype? subtype = getSubtype(rel.displayTypeId);
    final RelationshipEffects eff = action.relationshipEffects;
    final int attractionDelta = (subtype != null && !subtype.attractionAllowed)
        ? 0
        : eff.attraction;
    final RelationshipState newMetrics = rel.metrics.withChange(
      affectionDelta: eff.affection,
      trustDelta: eff.trust,
      respectDelta: eff.respect,
      attractionDelta: attractionDelta,
      conflictDelta: eff.conflict,
    );
    final int newValue =
        (rel.value + ((eff.affection + eff.trust + eff.respect) ~/ 3)).clamp(
          kMinRelationshipValue,
          kMaxRelationshipValue,
        );
    return rel.copyWith(metrics: newMetrics, value: newValue);
  }

  Relationship _applyDeclineConsequences(Relationship rel, GameAction action) {
    final RelationshipSubtype? subtype = getSubtype(rel.displayTypeId);
    final Map<String, int> decline = action.npcDeclineConsequences;
    final int attractionDelta = (subtype != null && !subtype.attractionAllowed)
        ? 0
        : (decline['attractionEffect'] ?? 0);
    if (decline.isEmpty) {
      return rel.copyWith(
        metrics: rel.metrics.withChange(affectionDelta: -3, conflictDelta: 5),
      );
    }
    return rel.copyWith(
      metrics: rel.metrics.withChange(
        affectionDelta: decline['affectionEffect'] ?? 0,
        trustDelta: decline['trustEffect'] ?? 0,
        respectDelta: decline['respectEffect'] ?? 0,
        attractionDelta: attractionDelta,
        conflictDelta: decline['conflictEffect'] ?? 0,
      ),
    );
  }

  LifeState _applyReputationChange(LifeState state, int delta) {
    if (delta == 0) return state;
    final SocialState socialState = state.socialState ?? const SocialState();
    final int newReputation = (socialState.reputation + delta).clamp(
      kMinReputation,
      kMaxReputation,
    );
    return state.copyWith(
      socialState: socialState.copyWith(reputation: newReputation),
    );
  }

  String _formatGroupActionMessage(GameAction action, List<String> npcIds) {
    final String placeholdersPhrase = npcIds.length == 1
        ? '{npc:${npcIds.single}}'
        : npcIds.length == 2
        ? '{npc:${npcIds[0]}} and {npc:${npcIds[1]}}'
        : '${npcIds.sublist(0, npcIds.length - 1).map((String id) => '{npc:$id}').join(', ')} and {npc:${npcIds.last}}';
    final String base = action.logMessage ?? action.name;
    final String firstClause = base.split(RegExp(r'[,.]')).first.trim();
    final String shortBase = firstClause.replaceFirst(
      RegExp(r' together$'),
      '',
    );
    return '$shortBase with $placeholdersPhrase.';
  }

  String _singleNpcLogMessage(GameAction action, String npcId) {
    String raw = action.logMessage ?? '${action.name}.';
    raw = raw.replaceAll('{npc}', '{npc:$npcId}');
    raw = raw.replaceAll('{npc_subject}', '{npc:$npcId:subject}');
    raw = raw.replaceAll('{npc_possessive}', '{npc:$npcId:possessive}');
    return raw;
  }

  bool _meetsConditions(GameAction action, LifeState state) {
    for (final condition in action.conditions) {
      final bool met = switch (condition) {
        PreviousLevelCondition() => true,
        PreviousProgramCondition() => true,
        MinGradeCondition() => true,
        MinSkillCondition(:final skill, :final minValue) =>
          state.skills.getValue(skill) >= minValue,
        CustomCondition(:final key, :final operator, :final value) =>
          _evaluateCustomCondition(state, key, operator, value),
      };
      if (!met) return false;
    }
    return true;
  }

  bool _meetsAgeCondition(GameAction action, LifeState state) {
    if (action.minAge != null && state.age < action.minAge!) return false;
    if (action.maxAge != null && state.age > action.maxAge!) return false;
    return true;
  }

  bool _evaluateCustomCondition(
    LifeState state,
    String key,
    String operator,
    dynamic value,
  ) {
    final dynamic actual = key == 'age' ? state.age : state.lifeData[key];
    if (actual == null) return false;
    return switch (operator) {
      '>=' => (actual as num) >= (value as num),
      '>' => (actual as num) > (value as num),
      '<=' => (actual as num) <= (value as num),
      '<' => (actual as num) < (value as num),
      '==' => actual == value,
      '!=' => actual != value,
      _ => false,
    };
  }

  bool _sharesWorkplace(Relationship rel, LifeState state) {
    final String? npcJobId = rel.npc.jobId;
    if (npcJobId == null) return false;
    return state.workState?.currentEmployments.any(
          (e) => e.jobId == npcJobId,
        ) ??
        false;
  }

  bool _sharesSchool(Relationship rel, LifeState state) {
    final String category = getCategoryForTypeId(rel.displayTypeId);
    if (category != 'colleague') return false;
    return rel.displayTypeId == 'classmate' &&
        state.educationState?.currentEnrollment?.isActive == true;
  }

  RelationshipState _defaultMetricsForType(String typeId, int baseValue) {
    final RelationshipSubtype? subtype = getSubtype(typeId);
    final int scaled = ((baseValue - 50) * 0.6).round();
    final int attractionForType;
    switch (typeId) {
      case 'mother':
      case 'father':
        attractionForType = 0;
        break;
      case 'sibling':
        attractionForType = 0;
        break;
      case 'spouse':
      case 'fiance':
        attractionForType = 45 + scaled;
        break;
      case 'boyfriend_girlfriend':
        attractionForType = 40 + scaled;
        break;
      case 'best_friend':
        attractionForType = 0;
        break;
      default:
        attractionForType = 0;
    }
    const int kFamilyAttractionValue = -100;
    final int attraction = (subtype != null && !subtype.attractionAllowed)
        ? kFamilyAttractionValue
        : attractionForType;
    switch (typeId) {
      case 'mother':
      case 'father':
        return RelationshipState(
          affection: 40 + scaled,
          trust: 30 + scaled,
          respect: 20 + scaled,
          attraction: attraction,
          conflict: 10,
        );
      case 'sibling':
        return RelationshipState(
          affection: 30 + scaled,
          trust: 25 + scaled,
          respect: 15 + scaled,
          attraction: attraction,
          conflict: 15,
        );
      case 'spouse':
      case 'fiance':
        return RelationshipState(
          affection: 50 + scaled,
          trust: 40 + scaled,
          respect: 35 + scaled,
          attraction: attraction,
          conflict: 5,
        );
      case 'boyfriend_girlfriend':
        return RelationshipState(
          affection: 40 + scaled,
          trust: 25 + scaled,
          respect: 20 + scaled,
          attraction: attraction,
          conflict: 10,
        );
      case 'best_friend':
        return RelationshipState(
          affection: 40 + scaled,
          trust: 35 + scaled,
          respect: 25 + scaled,
          attraction: attraction,
          conflict: 5,
        );
      default:
        return RelationshipState(
          affection: scaled,
          trust: scaled,
          respect: scaled,
          attraction: attraction,
          conflict: 10,
        );
    }
  }

  bool _isActionAllowedForRelationshipType(GameAction action, String typeId) {
    final RelationshipSubtype? subtype = getSubtype(typeId);
    if (subtype == null) return true;
    final List<String>? allowed = subtype.allowedActionTypes;
    if (allowed == null) return true;
    final String actionType = action.socialActionType ?? 'friendly';
    return allowed.contains(actionType);
  }

  String _inferTypeIdFromRole(String roleName) {
    switch (roleName) {
      case 'parent':
        return 'mother';
      case 'sibling':
        return 'sibling';
      case 'friend':
        return 'friend';
      case 'partner':
        return 'boyfriend_girlfriend';
      case 'coworker':
        return 'colleague';
      case 'mentor':
        return 'colleague';
      case 'rival':
        return 'acquaintance';
      case 'child':
        return 'child';
      case 'grandparent':
        return 'grandparent';
      case 'uncle':
        return 'uncle_aunt';
      case 'cousin':
        return 'cousin';
      case 'nephew':
        return 'nephew_niece';
      case 'grandchild':
        return 'grandchild';
      case 'acquaintance':
        return 'acquaintance';
      case 'bestFriend':
        return 'best_friend';
      case 'classmate':
        return 'classmate';
      case 'boss':
        return 'boss';
      case 'workSpouse':
        return 'work_spouse';
      case 'fiance':
        return 'fiance';
      case 'spouse':
        return 'spouse';
      case 'ex':
        return 'ex';
      default:
        return 'acquaintance';
    }
  }

  String _labelForTypeId(String typeId) {
    final RelationshipSubtype? subtype = getSubtype(typeId);
    return subtype?.label ?? typeId;
  }

  List<GameAction> _shuffleAndTake(
    List<GameAction> actions,
    int count,
    SeededRandom rng,
  ) {
    if (actions.isEmpty) return [];
    final List<GameAction> shuffled = List<GameAction>.from(actions);
    for (int i = shuffled.length - 1; i > 0; i--) {
      final int j = rng.nextInt(i + 1);
      final GameAction temp = shuffled[i];
      shuffled[i] = shuffled[j];
      shuffled[j] = temp;
    }
    return shuffled.take(count).toList();
  }
}
