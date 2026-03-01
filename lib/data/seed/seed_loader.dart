import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/achievement.dart';
import 'package:alma/core/models/education_program.dart';
import 'package:alma/core/models/job.dart';
import 'package:alma/core/rules/education_country_config.dart';
import 'package:alma/core/rules/work_country_config.dart';

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
}
