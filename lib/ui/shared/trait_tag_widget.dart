import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';

class TraitTagWidget extends StatelessWidget {
  const TraitTagWidget({super.key, required this.label, this.color});

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final Color effectiveColor =
        color ?? Theme.of(context).colorScheme.primaryContainer;
    final Color textColor = color != null
        ? (effectiveColor.computeLuminance() > 0.5
              ? Theme.of(context).colorScheme.onSurface
              : Theme.of(context).colorScheme.onPrimary)
        : Theme.of(context).colorScheme.onPrimaryContainer;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kSpacing12,
        vertical: kSpacing4,
      ),
      decoration: BoxDecoration(
        color: effectiveColor.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(kBorderRadiusSmall),
        border: Border.all(color: effectiveColor, width: 1),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
