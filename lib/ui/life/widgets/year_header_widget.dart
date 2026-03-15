import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';

class YearHeaderWidget extends StatelessWidget {
  const YearHeaderWidget({super.key, required this.year, required this.age});

  final int year;
  final int age;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Year $year', style: textTheme.titleLarge),
        kHorizontalGap8,
        Text(
          'Age $age',
          style: textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
