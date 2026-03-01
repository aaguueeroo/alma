import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';

class LogListWidget extends StatelessWidget {
  const LogListWidget({
    super.key,
    required this.title,
    required this.emptyMessage,
    this.logs = const [],
  });

  final String title;
  final String emptyMessage;
  final List<String> logs;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: colors.onSurfaceVariant,
              ),
        ),
        kVerticalGap12,
        if (logs.isEmpty)
          _EmptyLogMessage(message: emptyMessage)
        else
          ...logs.map((log) => _LogEntry(text: log)),
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
