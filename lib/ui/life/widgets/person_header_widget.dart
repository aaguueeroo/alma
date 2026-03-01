import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';

class PersonHeaderWidget extends StatelessWidget {
  const PersonHeaderWidget({
    super.key,
    required this.name,
    required this.subtitle,
    this.detail,
    this.avatarColor,
    this.trailing,
  });

  final String name;
  final String subtitle;
  final String? detail;
  final Color? avatarColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final Color effectiveAvatarColor = avatarColor ?? colors.primaryContainer;
    return Row(
      children: [
        CircleAvatar(
          radius: kAvatarSize / 2,
          backgroundColor: effectiveAvatarColor,
          child: Text(
            name.isNotEmpty ? name[0].toUpperCase() : '?',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: colors.onPrimaryContainer,
                ),
          ),
        ),
        kHorizontalGap16,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              kVerticalGap4,
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (detail case final String detailText) ...[
                const SizedBox(height: kSpacing2),
                Text(
                  detailText,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ],
          ),
        ),
        ?trailing,
      ],
    );
  }
}
