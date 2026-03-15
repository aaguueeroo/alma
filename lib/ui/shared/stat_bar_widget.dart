import 'package:flutter/material.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/spacing.dart';

class StatBarWidget extends StatelessWidget {
  const StatBarWidget({
    super.key,
    required this.label,
    required this.value,
    this.color,
    this.height,
  });

  final String label;
  final double value;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final Color effectiveColor = color ?? Theme.of(context).colorScheme.primary;
    final double effectiveHeight = height ?? kProgressBarHeight;
    final double clampedValue = value.clamp(0.0, 1.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: Theme.of(context).textTheme.bodyMedium),
            Text(
              '${(clampedValue * 100).round()}%',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        kVerticalGap4,
        SizedBox(
          height: effectiveHeight,
          child: LinearProgressIndicator(
            value: clampedValue,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation<Color>(effectiveColor),
            borderRadius: BorderRadius.circular(kBorderRadiusSmall),
          ),
        ),
      ],
    );
  }
}
