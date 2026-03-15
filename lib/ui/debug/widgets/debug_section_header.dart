import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';

class DebugSectionHeader extends StatelessWidget {
  const DebugSectionHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: kSpacing16, bottom: kSpacing8),
      child: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
