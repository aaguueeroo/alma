import 'package:flutter/material.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/bidirectional_bar_widget.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';

class RelationDetailWidget extends StatelessWidget {
  const RelationDetailWidget({
    super.key,
    required this.relationship,
    required this.onBack,
    this.logs = const [],
  });

  final Relationship relationship;
  final VoidCallback onBack;
  final List<GameLog> logs;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: kSpacing4,
            top: kSpacing8,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBack,
              tooltip: l10n.back,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: kPaddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PersonHeaderWidget(
                  name: relationship.npc.name,
                  subtitle: _getRoleLabel(relationship.npc.role, l10n),
                  trailing: Icon(
                    _getRoleIcon(relationship.npc.role),
                    size: kIconSizeLarge,
                    color: colors.onSurfaceVariant,
                  ),
                ),
                kVerticalGap24,
                Text(
                  l10n.relationshipProgress,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                ),
                kVerticalGap8,
                BidirectionalBarWidget(
                  value: relationship.value,
                  height: kProgressBarHeightLarge,
                ),
                kVerticalGap32,
                LogListWidget(
                  title: l10n.eventLog,
                  emptyMessage: l10n.noInteractionsRecorded,
                  gameLogs: logs,
                ),
                kVerticalGap32,
                Text(
                  l10n.actions,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                ),
                kVerticalGap12,
                Container(
                  width: double.infinity,
                  padding: kPaddingAll24,
                  decoration: BoxDecoration(
                    color: colors.surfaceContainerLow,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: Text(
                    l10n.notImplementedYet,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: colors.onSurfaceVariant,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _getRoleLabel(NpcRole role, AppLocalizations l10n) {
    switch (role) {
      case NpcRole.parent:
        return l10n.roleParent;
      case NpcRole.sibling:
        return l10n.roleSibling;
      case NpcRole.friend:
        return l10n.roleFriend;
      case NpcRole.partner:
        return l10n.rolePartner;
      case NpcRole.coworker:
        return l10n.roleCoworker;
      case NpcRole.mentor:
        return l10n.roleMentor;
      case NpcRole.rival:
        return l10n.roleRival;
      case NpcRole.child:
        return l10n.roleChild;
    }
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
