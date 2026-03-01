import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/time_constants.dart';
import 'package:alma/app/utils/time_format.dart';

class TimeBudgetBar extends StatelessWidget {
  const TimeBudgetBar({super.key, required this.timeRemaining});

  final int timeRemaining;

  @override
  Widget build(BuildContext context) {
    final double fraction = timeRemaining / kDaysPerYear;
    final ColorScheme colors = Theme.of(context).colorScheme;
    final String formattedTime = formatTimeRemainingMonths(timeRemaining);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Time Remaining:',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(formattedTime, style: Theme.of(context).textTheme.labelLarge),
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
