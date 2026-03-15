import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/achievement.dart';
import 'package:alma/core/models/education_program.dart';
import 'package:alma/core/models/job.dart';
import 'package:alma/core/models/life_maintenance_item.dart';
import 'package:alma/core/models/relationship_type.dart';
import 'package:alma/core/models/name_repository.dart';
import 'package:alma/core/models/social_country_config.dart';
import 'package:alma/core/rules/education_country_config.dart';
import 'package:alma/core/rules/work_country_config.dart';
import 'package:alma/core/models/condition_definition.dart';
import 'package:alma/core/models/health_action.dart';
import 'package:alma/core/models/symptom.dart';

class SeedLoader {
  List<GameEvent>? _cachedEvents;
  List<GameAction>? _cachedActions;
  List<LifeTemplate>? _cachedTemplates;
  List<Achievement>? _cachedAchievements;
  List<EducationProgram>? _cachedEducationPrograms;
  Map<String, EducationCountryConfig>? _cachedCountryConfigs;
  List<GameAction>? _cachedEducationActions;
  List<Job>? _cachedJobs;
  Map<String, WorkCountryConfig>? _cachedWorkCountryConfigs;
  List<GameAction>? _cachedWorkActions;
  List<LifeMaintenanceItem>? _cachedLifeMaintenance;
  List<GameAction>? _cachedSocialActions;
  List<RelationshipCategory>? _cachedRelationshipTypes;
  final Map<String, NameRepository> _cachedNameRepos = {};
  Map<String, SocialCountryConfig>? _cachedSocialCountryConfigs;
  List<ConditionDefinition>? _cachedConditionDefinitions;
  List<Symptom>? _cachedSymptoms;
  List<HealthAction>? _cachedHealthActions;
  List<GameEvent>? _cachedHealthEvents;

  Future<List<GameEvent>> loadEvents() async {
    if (_cachedEvents != null) return _cachedEvents!;
    final String jsonString = await rootBundle.loadString('assets/data/events.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedEvents = jsonList
        .map((e) => GameEvent.fromJson(e as Map<String, dynamic>))
        .toList();
    return _cachedEvents!;
  }

  Future<List<GameAction>> loadActions() async {
    if (_cachedActions != null) return _cachedActions!;
    final String jsonString = await rootBundle.loadString('assets/data/actions.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedActions = jsonList
        .map((a) => GameAction.fromJson(a as Map<String, dynamic>))
        .toList();
    return _cachedActions!;
  }

  Future<List<LifeTemplate>> loadLifeTemplates() async {
    if (_cachedTemplates != null) return _cachedTemplates!;
    final String jsonString =
        await rootBundle.loadString('assets/data/life_templates.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedTemplates = jsonList
        .map((t) => LifeTemplate.fromJson(t as Map<String, dynamic>))
        .toList();
    return _cachedTemplates!;
  }

  Future<List<Achievement>> loadAchievements() async {
    if (_cachedAchievements != null) return _cachedAchievements!;
    final String jsonString =
        await rootBundle.loadString('assets/data/achievements.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedAchievements = jsonList
        .map((a) => Achievement.fromJson(a as Map<String, dynamic>))
        .toList();
    return _cachedAchievements!;
  }

  Future<List<EducationProgram>> loadEducationPrograms() async {
    if (_cachedEducationPrograms != null) return _cachedEducationPrograms!;
    final String jsonString =
        await rootBundle.loadString('assets/data/education/programs.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedEducationPrograms = jsonList
        .map((p) => EducationProgram.fromJson(p as Map<String, dynamic>))
        .toList();
    return _cachedEducationPrograms!;
  }

  Future<EducationCountryConfig> loadEducationCountryConfig(String country) async {
    if (_cachedCountryConfigs != null && _cachedCountryConfigs!.containsKey(country)) {
      return _cachedCountryConfigs![country]!;
    }
    _cachedCountryConfigs ??= {};
    final String jsonString =
        await rootBundle.loadString('assets/data/education/country_configs.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    for (final dynamic entry in jsonList) {
      final EducationCountryConfig config =
          EducationCountryConfig.fromJson(entry as Map<String, dynamic>);
      _cachedCountryConfigs![config.countryCode] = config;
    }
    return _cachedCountryConfigs![country] ?? _cachedCountryConfigs!.values.first;
  }

  Future<List<GameAction>> loadEducationActions() async {
    if (_cachedEducationActions != null) return _cachedEducationActions!;
    final String jsonString =
        await rootBundle.loadString('assets/data/education/education_actions.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedEducationActions = jsonList
        .map((a) => GameAction.fromJson(a as Map<String, dynamic>))
        .toList();
    return _cachedEducationActions!;
  }

  Future<List<Job>> loadJobs() async {
    if (_cachedJobs != null) return _cachedJobs!;
    final String jsonString =
        await rootBundle.loadString('assets/data/work/jobs.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedJobs = jsonList
        .map((j) => Job.fromJson(j as Map<String, dynamic>))
        .toList();
    return _cachedJobs!;
  }

  Future<WorkCountryConfig> loadWorkCountryConfig(String country) async {
    if (_cachedWorkCountryConfigs != null &&
        _cachedWorkCountryConfigs!.containsKey(country)) {
      return _cachedWorkCountryConfigs![country]!;
    }
    _cachedWorkCountryConfigs ??= {};
    final String jsonString =
        await rootBundle.loadString('assets/data/work/work_country_configs.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    for (final dynamic entry in jsonList) {
      final WorkCountryConfig config =
          WorkCountryConfig.fromJson(entry as Map<String, dynamic>);
      _cachedWorkCountryConfigs![config.countryCode] = config;
    }
    return _cachedWorkCountryConfigs![country] ??
        _cachedWorkCountryConfigs!.values.first;
  }

  Future<List<GameAction>> loadWorkActions() async {
    if (_cachedWorkActions != null) return _cachedWorkActions!;
    final String jsonString =
        await rootBundle.loadString('assets/data/work/work_actions.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedWorkActions = jsonList
        .map((a) => GameAction.fromJson(a as Map<String, dynamic>))
        .toList();
    return _cachedWorkActions!;
  }

  Future<List<LifeMaintenanceItem>> loadLifeMaintenance() async {
    if (_cachedLifeMaintenance != null) return _cachedLifeMaintenance!;
    final String jsonString =
        await rootBundle.loadString('assets/data/life_maintenance.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedLifeMaintenance = jsonList
        .map((e) => LifeMaintenanceItem.fromJson(e as Map<String, dynamic>))
        .toList();
    return _cachedLifeMaintenance!;
  }

  Future<List<GameAction>> loadSocialActions() async {
    if (_cachedSocialActions != null) return _cachedSocialActions!;
    final String jsonString =
        await rootBundle.loadString('assets/data/social/social_actions.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedSocialActions = jsonList
        .map((a) => GameAction.fromJson(a as Map<String, dynamic>))
        .toList();
    return _cachedSocialActions!;
  }

  Future<List<RelationshipCategory>> loadRelationshipTypes() async {
    if (_cachedRelationshipTypes != null) return _cachedRelationshipTypes!;
    final String jsonString =
        await rootBundle.loadString('assets/data/social/relationship_types.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedRelationshipTypes = jsonList
        .map((r) => RelationshipCategory.fromJson(r as Map<String, dynamic>))
        .toList();
    return _cachedRelationshipTypes!;
  }

  Future<NameRepository> loadNameRepository(String country) async {
    if (_cachedNameRepos.containsKey(country)) {
      return _cachedNameRepos[country]!;
    }
    final String fileName = country.toLowerCase();
    try {
      final String jsonString = await rootBundle
          .loadString('assets/data/social/names/$fileName.json');
      final Map<String, dynamic> jsonMap =
          jsonDecode(jsonString) as Map<String, dynamic>;
      final NameRepository repo = NameRepository.fromJson(jsonMap);
      _cachedNameRepos[country] = repo;
      return repo;
    } catch (_) {
      if (country != 'default' && !_cachedNameRepos.containsKey('default')) {
        return loadNameRepository('default');
      }
      return _cachedNameRepos['default']!;
    }
  }

  Future<SocialCountryConfig> loadSocialCountryConfig(String country) async {
    if (_cachedSocialCountryConfigs != null &&
        _cachedSocialCountryConfigs!.containsKey(country)) {
      return _cachedSocialCountryConfigs![country]!;
    }
    _cachedSocialCountryConfigs ??= {};
    final String jsonString = await rootBundle
        .loadString('assets/data/social/social_country_config.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    for (final dynamic entry in jsonList) {
      final SocialCountryConfig config =
          SocialCountryConfig.fromJson(entry as Map<String, dynamic>);
      _cachedSocialCountryConfigs![config.country] = config;
    }
    return _cachedSocialCountryConfigs![country] ??
        _cachedSocialCountryConfigs!['default'] ??
        const SocialCountryConfig(country: 'default');
  }

  Future<List<ConditionDefinition>> loadConditions() async {
    if (_cachedConditionDefinitions != null) return _cachedConditionDefinitions!;
    final String jsonString = await rootBundle
        .loadString('assets/data/health/conditions.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedConditionDefinitions = jsonList
        .map((c) => ConditionDefinition.fromJson(c as Map<String, dynamic>))
        .toList();
    return _cachedConditionDefinitions!;
  }

  Future<List<Symptom>> loadSymptoms() async {
    if (_cachedSymptoms != null) return _cachedSymptoms!;
    final String jsonString = await rootBundle
        .loadString('assets/data/health/symptoms.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedSymptoms = jsonList
        .map((s) => Symptom.fromJson(s as Map<String, dynamic>))
        .toList();
    return _cachedSymptoms!;
  }

  Future<List<HealthAction>> loadHealthActions() async {
    if (_cachedHealthActions != null) return _cachedHealthActions!;
    final String jsonString = await rootBundle
        .loadString('assets/data/health/health_actions.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedHealthActions = jsonList
        .map((a) => HealthAction.fromJson(a as Map<String, dynamic>))
        .toList();
    return _cachedHealthActions!;
  }

  Future<List<GameEvent>> loadHealthEvents() async {
    if (_cachedHealthEvents != null) return _cachedHealthEvents!;
    final String jsonString = await rootBundle
        .loadString('assets/data/health/health_events.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    _cachedHealthEvents = jsonList
        .map((e) => GameEvent.fromJson(e as Map<String, dynamic>))
        .toList();
    return _cachedHealthEvents!;
  }
}
