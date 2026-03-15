import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';

class DebugConditionTile extends StatelessWidget {
  const DebugConditionTile({
    super.key,
    required this.name,
    required this.type,
    required this.effectsSummary,
    required this.hasCondition,
    required this.onGive,
    required this.onRemove,
  });

  final String name;
  final String type;
  final String effectsSummary;
  final bool hasCondition;
  final VoidCallback onGive;
  final VoidCallback onRemove;

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
            Row(
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  type,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (hasCondition)
                  TextButton(
                    onPressed: onRemove,
                    child: const Text('Remove'),
                  ),
                FilledButton.tonal(
                  onPressed: onGive,
                  child: Text(hasCondition ? 'Give again' : 'Give'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
