/// Log message templates loaded from JSON.
/// Placeholders like {name}, {description}, {eventTitle} are replaced at runtime.
class HealthLogTemplates {
  const HealthLogTemplates({
    required this.health,
    required this.event,
  });

  factory HealthLogTemplates.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> healthRaw =
        json['health'] as Map<String, dynamic>? ?? {};
    final Map<String, dynamic> eventRaw =
        json['event'] as Map<String, dynamic>? ?? {};
    final Map<String, String> health = healthRaw.map(
      (k, v) => MapEntry(k, v as String),
    );
    final Map<String, String> event = eventRaw.map(
      (k, v) => MapEntry(k, v as String),
    );
    return HealthLogTemplates(health: health, event: event);
  }

  final Map<String, String> health;
  final Map<String, String> event;

  String resolveHealth(String key, Map<String, String> params) {
    final String template = health[key] ?? '';
    return _replacePlaceholders(template, params);
  }

  String resolveEvent(String key, Map<String, String> params) {
    final String template = event[key] ?? '';
    return _replacePlaceholders(template, params);
  }

  String _replacePlaceholders(String template, Map<String, String> params) {
    String result = template;
    for (final entry in params.entries) {
      result = result.replaceAll('{${entry.key}}', entry.value);
    }
    return result;
  }
}
