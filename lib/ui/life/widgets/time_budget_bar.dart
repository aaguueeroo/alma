import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/game_constants.dart';

class TimeBudgetBar extends StatelessWidget {
  const TimeBudgetBar({
    super.key,
    required this.timeRemaining,
  });

  final int timeRemaining;

  @override
  Widget build(BuildContext context) {
    final double fraction = timeRemaining / kTimeUnitsPerYear;
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Time Remaining',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              '$timeRemaining / $kTimeUnitsPerYear',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        kVerticalGap4,
        ClipRRect(
          borderRadius: BorderRadius.circular(kBorderRadiusSmall),
          child: LinearProgressIndicator(
            value: fraction,
            minHeight: kProgressBarHeightLarge,
            backgroundColor: colors.surfaceContainerHighest,
            color: fraction > 0.5
                ? colors.primary
                : fraction > 0.2
                    ? colors.tertiary
                    : colors.error,
          ),
        ),
      ],
    );
  }
}
