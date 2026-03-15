import 'package:flutter/material.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/utils/log_message_resolver.dart';

class LogListWidget extends StatelessWidget {
  const LogListWidget({
    super.key,
    required this.title,
    required this.emptyMessage,
    this.gameLogs = const [],
    this.logs = const [],
    this.relationships,
    this.contextNpcId,
    this.showTitle = true,
  });

  final String title;
  final String emptyMessage;
  final List<GameLog> gameLogs;
  final List<String> logs;
  final List<Relationship>? relationships;
  final String? contextNpcId;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final bool isEmpty = gameLogs.isEmpty && logs.isEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle && title.isNotEmpty) ...[
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
          ),
          kVerticalGap12,
        ],
        if (isEmpty)
          _EmptyLogMessage(message: emptyMessage)
        else ...[
          ...gameLogs.map((GameLog log) {
            final String displayMessage = relationships != null
                ? resolveLogMessage(
                    log.message,
                    relationships!,
                    contextNpcId,
                  )
                : log.message;
            return _GameLogEntry(log: log, displayMessage: displayMessage);
          }),
          ...logs.map((String log) => _LogEntry(text: log)),
        ],
      ],
    );
  }
}

class _EmptyLogMessage extends StatelessWidget {
  const _EmptyLogMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: kPaddingAll24,
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colors.onSurfaceVariant,
              fontStyle: FontStyle.italic,
            ),
      ),
    );
  }
}

class _GameLogEntry extends StatelessWidget {
  const _GameLogEntry({required this.log, required this.displayMessage});

  final GameLog log;
  final String displayMessage;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: kSpacing8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kSpacing4),
            child: Icon(
              Icons.circle,
              size: kSpacing4,
              color: colors.onSurfaceVariant,
            ),
          ),
          kHorizontalGap12,
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '[${log.age}] ',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  TextSpan(
                    text: displayMessage,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LogEntry extends StatelessWidget {
  const _LogEntry({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: kSpacing8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kSpacing4),
            child: Icon(
              Icons.circle,
              size: kSpacing4,
              color: colors.onSurfaceVariant,
            ),
          ),
          kHorizontalGap12,
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
