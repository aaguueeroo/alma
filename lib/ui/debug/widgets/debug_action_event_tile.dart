import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';

class DebugActionEventTile extends StatelessWidget {
  const DebugActionEventTile({
    super.key,
    required this.title,
    required this.description,
    required this.effectsSummary,
    required this.onTrigger,
  });

  final String title;
  final String description;
  final String effectsSummary;
  final VoidCallback onTrigger;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: kSpacing16,
        vertical: kSpacing4,
      ),
      child: Padding(
        padding: kPaddingAll12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            if (description.isNotEmpty) ...[
              kVerticalGap4,
              Text(
                description,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
            if (effectsSummary.isNotEmpty) ...[
              kVerticalGap4,
              Text(
                effectsSummary,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontFamily: 'monospace',
                  fontSize: 12,
                ),
              ),
            ],
            kVerticalGap8,
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton.tonal(
                onPressed: onTrigger,
                child: const Text('Trigger'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
