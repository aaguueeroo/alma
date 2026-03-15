import 'package:flutter/material.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/bidirectional_bar_widget.dart';
import 'package:alma/ui/life/widgets/log_preview_section.dart';
import 'package:alma/ui/shared/radar_chart_widget.dart';

class RelationDetailWidget extends StatelessWidget {
  const RelationDetailWidget({
    super.key,
    required this.relationship,
    required this.onBack,
    this.logs = const [],
    this.npcActions = const [],
    this.performedActionsThisYear = const [],
    this.relationships = const [],
    this.relationshipTypeLabel,
    this.attractionAllowed = true,
    this.onActionTap,
  });

  final Relationship relationship;
  final VoidCallback onBack;
  final List<GameLog> logs;
  final List<GameAction> npcActions;
  final List<GameAction> performedActionsThisYear;
  final List<Relationship> relationships;
  /// When set (e.g. "Mother", "Father"), used as subtitle instead of generic role label.
  final String? relationshipTypeLabel;
  /// When false (e.g. family), attraction is shown as 0 on the spider chart.
  final bool attractionAllowed;
  final void Function(GameAction action)? onActionTap;

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
                  subtitle: relationshipTypeLabel ??
                      _getRoleLabel(relationship.npc.role, l10n),
                  gender: relationship.npc.gender,
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
                kVerticalGap24,
                Center(
                  child: RadarChartWidget(
                    values: {
                      l10n.affection: (relationship.metrics.affection + 100) / 200,
                      l10n.trust: (relationship.metrics.trust + 100) / 200,
                      l10n.respect: (relationship.metrics.respect + 100) / 200,
                      l10n.attraction: attractionAllowed
                          ? (relationship.metrics.attraction + 100) / 200
                          : 0.0,
                      l10n.conflict: relationship.metrics.conflict / 100,
                    },
                    size: kRadarChartSize,
                  ),
                ),
                kVerticalGap24,
                Text(
                  l10n.npcActions,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                ),
                kVerticalGap12,
                if (npcActions.isEmpty)
                  Container(
                    width: double.infinity,
                    padding: kPaddingAll24,
                    decoration: BoxDecoration(
                      color: colors.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: Text(
                      l10n.noSocialActionsAvailable,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: colors.onSurfaceVariant,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  )
                else
                  ...npcActions.map((GameAction action) {
                    return _NpcActionTile(
                      action: action,
                      onTap: () => onActionTap?.call(action),
                    );
                  }),
                if (performedActionsThisYear.isNotEmpty) ...[
                  kVerticalGap24,
                  Text(
                    l10n.usedActions,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                  ),
                  kVerticalGap8,
                  ...performedActionsThisYear.map(
                    (GameAction action) => Padding(
                      padding: const EdgeInsets.only(bottom: kSpacing4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            size: kIconSizeSmall,
                            color: colors.primary,
                          ),
                          kHorizontalGap8,
                          Expanded(
                            child: Text(
                              action.name,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                kVerticalGap32,
                LogPreviewSection(
                  title: l10n.eventLog,
                  emptyMessage: l10n.noInteractionsRecorded,
                  gameLogs: logs,
                  relationships: relationships.isNotEmpty ? relationships : null,
                  contextNpcId: relationship.npc.id,
                ),
                kVerticalGap32,
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
      case NpcRole.grandparent:
        return l10n.roleGrandparent;
      case NpcRole.uncle:
        return l10n.roleUncle;
      case NpcRole.cousin:
        return l10n.roleCousin;
      case NpcRole.nephew:
        return l10n.roleNephew;
      case NpcRole.grandchild:
        return l10n.roleGrandchild;
      case NpcRole.acquaintance:
        return l10n.roleAcquaintance;
      case NpcRole.bestFriend:
        return l10n.roleBestFriend;
      case NpcRole.classmate:
        return l10n.roleClassmate;
      case NpcRole.boss:
        return l10n.roleBoss;
      case NpcRole.workSpouse:
        return l10n.roleWorkSpouse;
      case NpcRole.fiance:
        return l10n.roleFiance;
      case NpcRole.spouse:
        return l10n.roleSpouse;
      case NpcRole.ex:
        return l10n.roleEx;
    }
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
}

class _NpcActionTile extends StatelessWidget {
  const _NpcActionTile({
    required this.action,
    required this.onTap,
  });

  final GameAction action;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(action.name),
      subtitle: Text(action.description),
      trailing: Container(
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
      onTap: onTap,
    );
  }
}
