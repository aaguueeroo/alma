import 'package:flutter/material.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/durations.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/relation_tile_widget.dart';
import 'package:alma/ui/life/widgets/relation_detail_widget.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';

enum _RelationFilter { all, family, friends, love, work }

class RelationsTab extends StatefulWidget {
  const RelationsTab({
    super.key,
    required this.relationships,
    this.logs = const [],
    this.genericActions = const [],
    this.onGenericActionTap,
    this.onNpcActionTap,
    this.getNpcActions,
    this.getPerformedActionsThisYear,
    this.getRelationshipTypeLabel,
    this.getIsAttractionAllowed,
  });

  final List<Relationship> relationships;
  final List<GameLog> logs;
  final List<GameAction> genericActions;
  final void Function(GameAction action, List<String> targetNpcIds)? onGenericActionTap;
  final void Function(GameAction action, String npcId)? onNpcActionTap;
  final List<GameAction> Function(String npcId)? getNpcActions;
  final List<GameAction> Function(String npcId)? getPerformedActionsThisYear;
  /// Returns the relationship type label (e.g. "Mother", "Father") for [typeId]; null to use role-based label.
  final String? Function(String typeId)? getRelationshipTypeLabel;
  /// When false for a type (e.g. family), the spider chart shows 0 for attraction.
  final bool Function(String typeId)? getIsAttractionAllowed;

  @override
  State<RelationsTab> createState() => _RelationsTabState();
}

class _RelationsTabState extends State<RelationsTab> {
  _RelationFilter _selectedFilter = _RelationFilter.all;
  Relationship? _selectedRelationship;

  @override
  Widget build(BuildContext context) {
    if (_selectedRelationship != null) {
      return _buildDetailView();
    }
    return _buildListView();
  }

  Widget _buildDetailView() {
    final String npcId = _selectedRelationship!.npc.id;
    final Relationship currentRel = widget.relationships
            .where((Relationship r) => r.npc.id == npcId)
            .firstOrNull ??
        _selectedRelationship!;
    final List<GameLog> npcLogs = widget.logs
        .where((GameLog log) =>
            log.category == LogCategory.social &&
            log.tags.contains('npc:$npcId'))
        .toList()
        .reversed
        .toList();
    final List<GameAction> npcActions = widget.getNpcActions?.call(npcId) ?? [];
    final List<GameAction> performedThisYear =
        widget.getPerformedActionsThisYear?.call(npcId) ?? [];
    return AnimatedSwitcher(
      duration: kDurationNormal,
      child: RelationDetailWidget(
        key: ValueKey(npcId),
        relationship: currentRel,
        logs: npcLogs,
        npcActions: npcActions,
        performedActionsThisYear: performedThisYear,
        relationships: widget.relationships,
        relationshipTypeLabel: widget.getRelationshipTypeLabel?.call(
          currentRel.displayTypeId,
        ),
        attractionAllowed: widget.getIsAttractionAllowed?.call(currentRel.displayTypeId) ?? true,
        onBack: () => setState(() => _selectedRelationship = null),
        onActionTap: (GameAction action) {
          widget.onNpcActionTap?.call(action, npcId);
        },
      ),
    );
  }

  Widget _buildListView() {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final List<Relationship> filtered = _applyFilter(
      widget.relationships.where((Relationship r) => r.isActive).toList(),
    );
    final List<GameLog> socialLogs = widget.logs
        .where((GameLog log) => log.category == LogCategory.social)
        .toList()
        .reversed
        .toList();
    return AnimatedSwitcher(
      duration: kDurationNormal,
      child: Column(
        key: const ValueKey('list'),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kSpacing16,
              vertical: kSpacing12,
            ),
            child: _FilterChips(
              selected: _selectedFilter,
              onChanged: (filter) => setState(() => _selectedFilter = filter),
            ),
          ),
          Expanded(
            child: filtered.isEmpty
                ? Center(
                    child: Text(
                      l10n.noRelationships,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  )
                : ListView(
                    padding: kPaddingHorizontal16,
                    children: [
                      ...filtered.map((Relationship rel) {
                        return Column(
                          children: [
                            RelationTileWidget(
                              relationship: rel,
                              onTap: () => setState(
                                () => _selectedRelationship = rel,
                              ),
                            ),
                            const Divider(height: 1),
                          ],
                        );
                      }),
                      if (widget.genericActions.isNotEmpty) ...[
                        kVerticalGap16,
                        _GenericActionsSection(
                          actions: widget.genericActions,
                          relationships: widget.relationships,
                          onActionTap: widget.onGenericActionTap,
                          l10n: l10n,
                        ),
                      ],
                      if (socialLogs.isNotEmpty) ...[
                        kVerticalGap24,
                        LogListWidget(
                          title: l10n.socialLog,
                          emptyMessage: l10n.noInteractionsRecorded,
                          gameLogs: socialLogs.take(20).toList(),
                          relationships: widget.relationships,
                        ),
                      ],
                      kVerticalGap24,
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  List<Relationship> _applyFilter(List<Relationship> relationships) {
    switch (_selectedFilter) {
      case _RelationFilter.all:
        return relationships;
      case _RelationFilter.family:
        return relationships.where((r) => _isFamilyRole(r.npc.role)).toList();
      case _RelationFilter.friends:
        return relationships.where((r) => _isFriendRole(r.npc.role)).toList();
      case _RelationFilter.love:
        return relationships.where((r) => _isRomanticRole(r.npc.role)).toList();
      case _RelationFilter.work:
        return relationships.where((r) => _isWorkRole(r.npc.role)).toList();
    }
  }

  bool _isFamilyRole(NpcRole role) {
    return role == NpcRole.parent ||
        role == NpcRole.sibling ||
        role == NpcRole.child ||
        role == NpcRole.grandparent ||
        role == NpcRole.uncle ||
        role == NpcRole.cousin ||
        role == NpcRole.nephew ||
        role == NpcRole.grandchild;
  }

  bool _isFriendRole(NpcRole role) {
    return role == NpcRole.friend ||
        role == NpcRole.bestFriend ||
        role == NpcRole.acquaintance ||
        role == NpcRole.mentor ||
        role == NpcRole.rival;
  }

  bool _isRomanticRole(NpcRole role) {
    return role == NpcRole.partner ||
        role == NpcRole.fiance ||
        role == NpcRole.spouse ||
        role == NpcRole.ex;
  }

  bool _isWorkRole(NpcRole role) {
    return role == NpcRole.coworker ||
        role == NpcRole.boss ||
        role == NpcRole.workSpouse ||
        role == NpcRole.classmate;
  }
}

class _FilterChips extends StatelessWidget {
  const _FilterChips({
    required this.selected,
    required this.onChanged,
  });

  final _RelationFilter selected;
  final ValueChanged<_RelationFilter> onChanged;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildChip(context, _RelationFilter.all, l10n.filterAll),
          kHorizontalGap8,
          _buildChip(context, _RelationFilter.family, l10n.filterFamily),
          kHorizontalGap8,
          _buildChip(context, _RelationFilter.friends, l10n.filterFriends),
          kHorizontalGap8,
          _buildChip(context, _RelationFilter.love, l10n.filterLove),
          kHorizontalGap8,
          _buildChip(context, _RelationFilter.work, l10n.filterWork),
        ],
      ),
    );
  }

  Widget _buildChip(
    BuildContext context,
    _RelationFilter filter,
    String label,
  ) {
    final bool isSelected = selected == filter;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onChanged(filter),
    );
  }
}

class _GenericActionsSection extends StatelessWidget {
  const _GenericActionsSection({
    required this.actions,
    required this.relationships,
    required this.onActionTap,
    required this.l10n,
  });

  final List<GameAction> actions;
  final List<Relationship> relationships;
  final void Function(GameAction action, List<String> targetNpcIds)? onActionTap;
  final AppLocalizations l10n;

  static String _genericActionDisplayTitle(GameAction action) {
    if (!action.isGroupAction) return action.name;
    const String suffix = ' with...';
    if (action.name.endsWith(suffix)) return action.name;
    return '${action.name}$suffix';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.socialGenericActions,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        kVerticalGap8,
        ...actions.map((GameAction action) {
          return _GenericActionTile(
            action: action,
            displayTitle: _genericActionDisplayTitle(action),
            onTap: () {
              if (action.isGroupAction) {
                if (relationships.isNotEmpty) {
                  _showNpcSelectionDialog(context, action);
                } else {
                  onActionTap?.call(action, []);
                }
              } else {
                onActionTap?.call(action, []);
              }
            },
          );
        }),
      ],
    );
  }

  void _showNpcSelectionDialog(BuildContext context, GameAction action) {
    final List<Relationship> activeRels =
        relationships.where((Relationship r) => r.isActive).toList();
    final Set<String> selectedIds = {};
    final String dialogTitle = _genericActionDisplayTitle(action);
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return StatefulBuilder(
          builder: (BuildContext ctx, StateSetter setDialogState) {
            return AlertDialog(
              title: Text(dialogTitle),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      action.description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    kVerticalGap12,
                    Text(
                      l10n.selectNpc,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    kVerticalGap8,
                    ...activeRels.map((Relationship rel) {
                      final bool isSelected = selectedIds.contains(rel.npc.id);
                      return CheckboxListTile(
                        title: Text(rel.npc.name),
                        value: isSelected,
                        onChanged: (bool? val) {
                          setDialogState(() {
                            if (val == true) {
                              selectedIds.add(rel.npc.id);
                            } else {
                              selectedIds.remove(rel.npc.id);
                            }
                          });
                        },
                      );
                    }),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: Text(l10n.back),
                ),
                TextButton(
                  onPressed: selectedIds.isEmpty
                      ? null
                      : () {
                          Navigator.of(ctx).pop();
                          onActionTap?.call(action, selectedIds.toList());
                        },
                  child: Text(l10n.performAction),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _GenericActionTile extends StatelessWidget {
  const _GenericActionTile({
    required this.action,
    required this.displayTitle,
    required this.onTap,
  });

  final GameAction action;
  final String displayTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(displayTitle),
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
