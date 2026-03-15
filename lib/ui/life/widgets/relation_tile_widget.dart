import 'package:flutter/material.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/enums/gender.dart';
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
    final String displayName = relationship.npc.alias ?? relationship.npc.name;
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
                displayName.isNotEmpty ? displayName[0].toUpperCase() : '?',
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          displayName,
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (relationship.npc.gender != null) ...[
                        const SizedBox(width: kSpacing4),
                        Icon(
                          _genderIcon(relationship.npc.gender!),
                          size: kIconSize,
                          color: colors.onSurfaceVariant,
                        ),
                      ],
                    ],
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
      case NpcRole.bestFriend:
      case NpcRole.acquaintance:
        return Icons.person;
      case NpcRole.partner:
      case NpcRole.fiance:
      case NpcRole.spouse:
        return Icons.favorite;
      case NpcRole.coworker:
      case NpcRole.boss:
      case NpcRole.workSpouse:
      case NpcRole.classmate:
        return Icons.work;
      case NpcRole.mentor:
        return Icons.school;
      case NpcRole.rival:
      case NpcRole.ex:
        return Icons.sports_martial_arts;
      case NpcRole.child:
        return Icons.child_care;
      case NpcRole.grandparent:
      case NpcRole.uncle:
      case NpcRole.cousin:
      case NpcRole.nephew:
      case NpcRole.grandchild:
        return Icons.family_restroom;
    }
  }

  static IconData _genderIcon(Gender gender) {
    switch (gender) {
      case Gender.male:
        return Icons.male;
      case Gender.female:
        return Icons.female;
      case Gender.other:
        return Icons.transgender;
    }
  }
}
