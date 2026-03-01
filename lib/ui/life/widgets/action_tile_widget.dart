import 'package:flutter/material.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/l10n/app_localizations.dart';

class ActionTileWidget extends StatelessWidget {
  const ActionTileWidget({
    super.key,
    required this.action,
    required this.onTap,
    this.isEnabled = true,
  });

  final GameAction action;
  final VoidCallback onTap;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    final Color categoryColor = _getCategoryColor(action.category);
    return Card(
      child: InkWell(
        onTap: isEnabled ? onTap : null,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Padding(
          padding: kPaddingAll12,
          child: Row(
            children: [
              Container(
                width: kAvatarSizeSmall,
                height: kAvatarSizeSmall,
                decoration: BoxDecoration(
                  color: categoryColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(kBorderRadiusSmall),
                ),
                child: Icon(
                  _getCategoryIcon(action.category),
                  color: isEnabled
                      ? categoryColor
                      : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.38),
                  size: kIconSizeSmall,
                ),
              ),
              kHorizontalGap12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      action.name,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: isEnabled
                                ? null
                                : Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withValues(alpha: 0.38),
                          ),
                    ),
                    Text(
                      action.description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant
                                .withValues(alpha: isEnabled ? 1.0 : 0.38),
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              kHorizontalGap8,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kSpacing8,
                  vertical: kSpacing4,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(kBorderRadiusSmall),
                ),
                child: Text(
                  AppLocalizations.of(context)!.timeCostLabel(action.timeCost),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getCategoryColor(ActionCategory category) {
    switch (category) {
      case ActionCategory.education:
        return AppColors.educationBlue;
      case ActionCategory.work:
        return AppColors.workAmber;
      case ActionCategory.health:
        return AppColors.healthGreen;
      case ActionCategory.social:
        return AppColors.socialPink;
    }
  }

  IconData _getCategoryIcon(ActionCategory category) {
    switch (category) {
      case ActionCategory.education:
        return Icons.school;
      case ActionCategory.work:
        return Icons.work;
      case ActionCategory.health:
        return Icons.favorite;
      case ActionCategory.social:
        return Icons.people;
    }
  }
}
