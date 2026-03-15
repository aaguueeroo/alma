import 'package:flutter/material.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';

class SectionCardWidget extends StatelessWidget {
  const SectionCardWidget({super.key, required this.section});

  final Section section;

  @override
  Widget build(BuildContext context) {
    final Color sectionColor = _getSectionColor(section.type);
    return Card(
      child: Padding(
        padding: kPaddingAll12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  _getSectionIcon(section.type),
                  color: sectionColor,
                  size: kIconSizeSmall,
                ),
                kHorizontalGap8,
                Text(
                  section.type.name[0].toUpperCase() +
                      section.type.name.substring(1),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Spacer(),
                Text(
                  '${section.performance}%',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            if (section.contextLabel.isNotEmpty) ...[
              kVerticalGap4,
              Text(
                section.contextLabel,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
            kVerticalGap8,
            ClipRRect(
              borderRadius: BorderRadius.circular(kBorderRadiusSmall),
              child: LinearProgressIndicator(
                value: section.performance / 100,
                minHeight: kProgressBarHeight,
                color: sectionColor,
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.surfaceContainerHighest,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getSectionColor(SectionType type) {
    switch (type) {
      case SectionType.education:
        return AppColors.educationBlue;
      case SectionType.work:
        return AppColors.workAmber;
      case SectionType.health:
        return AppColors.healthGreen;
      case SectionType.social:
        return AppColors.socialPink;
    }
  }

  IconData _getSectionIcon(SectionType type) {
    switch (type) {
      case SectionType.education:
        return Icons.school;
      case SectionType.work:
        return Icons.work;
      case SectionType.health:
        return Icons.favorite;
      case SectionType.social:
        return Icons.people;
    }
  }
}
