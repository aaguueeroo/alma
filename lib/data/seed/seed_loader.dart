import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/achievement.dart';

class SeedLoader {
  List<GameEvent>? _cachedEvents;
  List<GameAction>? _cachedActions;
  List<LifeTemplate>? _cachedTemplates;
  List<Achievement>? _cachedAchievements;

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
}
