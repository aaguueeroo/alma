import 'dart:developer' as developer;

/// Central place for app error reporting. Logs errors now; can be extended
/// later with crash-reporting (e.g. Firebase Crashlytics) by adding [handlers].
class ErrorLogger {
  ErrorLogger._();

  static final List<void Function(Object error, StackTrace? stackTrace, String? context)> _handlers = [];

  /// Add a handler for errors (e.g. send to crash reporting). Handlers are invoked after logging.
  static void addHandler(void Function(Object error, StackTrace? stackTrace, String? context) handler) {
    _handlers.add(handler);
  }

  /// Remove a previously added handler.
  static void removeHandler(void Function(Object error, StackTrace? stackTrace, String? context) handler) {
    _handlers.remove(handler);
  }

  /// Log an error. Always prints to debug console; then invokes any registered handlers.
  static void logError(Object error, [StackTrace? stackTrace, String? context]) {
    final String contextStr = context != null ? '[$context] ' : '';
    developer.log(
      '$contextStr$error',
      name: 'ErrorLogger',
      error: error,
      stackTrace: stackTrace,
    );
    for (final void Function(Object, StackTrace?, String?) h in _handlers) {
      try {
        h(error, stackTrace, context);
      } catch (e, st) {
        developer.log('Error in ErrorLogger handler: $e', name: 'ErrorLogger', error: e, stackTrace: st);
      }
    }
  }
}
