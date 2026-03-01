import 'package:flutter/material.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/ui/life/widgets/bidirectional_bar_widget.dart';

class RelationTileWidget extends StatelessWidget {
  const RelationTileWidget({
    super.key,
    required this.relationship,
    required this.onTap,
  });

  final Relationship relationship;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: kSpacing12,
          horizontal: kSpacing4,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: kAvatarSizeSmall / 2,
              backgroundColor: colors.primaryContainer,
              child: Text(
                relationship.npc.name[0].toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colors.onPrimaryContainer,
                    ),
              ),
            ),
            kHorizontalGap12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    relationship.npc.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  kVerticalGap4,
                  BidirectionalBarWidget(value: relationship.value),
                ],
              ),
            ),
            kHorizontalGap12,
            Icon(
              _getRoleIcon(relationship.npc.role),
              size: kIconSize,
              color: colors.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  IconData _getRoleIcon(NpcRole role) {
    switch (role) {
      case NpcRole.parent:
        return Icons.family_restroom;
      case NpcRole.sibling:
        return Icons.people;
      case NpcRole.friend:
        return Icons.person;
      case NpcRole.partner:
        return Icons.favorite;
      case NpcRole.coworker:
        return Icons.work;
      case NpcRole.mentor:
        return Icons.school;
      case NpcRole.rival:
        return Icons.sports_martial_arts;
      case NpcRole.child:
        return Icons.child_care;
    }
  }
}
