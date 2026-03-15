import 'package:flutter/material.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/durations.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/relation_tile_widget.dart';
import 'package:alma/ui/life/widgets/relation_detail_widget.dart';
import 'package:alma/ui/life/widgets/relation_filter_chips_widget.dart';
import 'package:alma/ui/life/widgets/log_preview_section.dart';
import 'package:alma/ui/life/widgets/life_action_tile_widget.dart';

class RelationsTab extends StatefulWidget {
  const RelationsTab({
    super.key,
    required this.relationships,
    required this.lifeName,
    this.logs = const [],
    this.genericActions = const [],
    this.canPerformAction,
    this.onGenericActionTap,
    this.onNpcActionTap,
    this.getNpcActions,
    this.getPerformedActionsThisYear,
    this.getRelationshipTypeLabel,
    this.getIsAttractionAllowed,
  });

  final List<Relationship> relationships;
  final String lifeName;
  final List<GameLog> logs;
  final List<GameAction> genericActions;
  final bool Function(GameAction action)? canPerformAction;
  final Future<void> Function(GameAction action, List<String> targetNpcIds)?
  onGenericActionTap;
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
  RelationFilter _selectedFilter = RelationFilter.all;
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
    final Relationship currentRel =
        widget.relationships
            .where((Relationship r) => r.npc.id == npcId)
            .firstOrNull ??
        _selectedRelationship!;
    final List<GameLog> npcLogs = widget.logs
        .where(
          (GameLog log) =>
              log.category == LogCategory.social &&
              log.tags.contains('npc:$npcId'),
        )
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
        attractionAllowed:
            widget.getIsAttractionAllowed?.call(currentRel.displayTypeId) ??
            true,
        onBack: () => setState(() => _selectedRelationship = null),
        canPerformAction: widget.canPerformAction,
        onActionTap: (GameAction action) {
          widget.onNpcActionTap?.call(action, npcId);
        },
      ),
    );
  }

  Widget _buildListView() {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final List<Relationship> filtered = RelationFilterUtils.applyFilter(
      widget.relationships.where((Relationship r) => r.isActive).toList(),
      _selectedFilter,
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
            padding: kPaddingScreen,
            child: PersonHeaderWidget(
              name: widget.lifeName,
              subtitle: l10n.tabRelations,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kSpacing16,
              vertical: kSpacing12,
            ),
            child: RelationFilterChipsWidget(
              selected: _selectedFilter,
              onChanged: (RelationFilter filter) =>
                  setState(() => _selectedFilter = filter),
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
                              onTap: () =>
                                  setState(() => _selectedRelationship = rel),
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
                          canPerformAction: widget.canPerformAction,
                          onActionTap: widget.onGenericActionTap,
                          getRelationshipTypeLabel:
                              widget.getRelationshipTypeLabel,
                          l10n: l10n,
                        ),
                      ],
                      kVerticalGap24,
                      LogPreviewSection(
                        title: l10n.socialLog,
                        emptyMessage: l10n.noInteractionsRecorded,
                        gameLogs: socialLogs,
                        relationships: widget.relationships,
                      ),
                      kVerticalGap24,
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class _GenericActionsSection extends StatelessWidget {
  const _GenericActionsSection({
    required this.actions,
    required this.relationships,
    required this.onActionTap,
    required this.l10n,
    this.canPerformAction,
    this.getRelationshipTypeLabel,
  });

  final List<GameAction> actions;
  final List<Relationship> relationships;
  final Future<void> Function(GameAction action, List<String> targetNpcIds)?
  onActionTap;
  final bool Function(GameAction action)? canPerformAction;
  final String? Function(String typeId)? getRelationshipTypeLabel;
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
          final bool canPerform = canPerformAction?.call(action) ?? true;
          return LifeActionTileWidget.fromGameAction(
            action: action,
            displayTitle: _genericActionDisplayTitle(action),
            isEnabled: canPerform,
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
    final List<Relationship> activeRels = relationships
        .where((Relationship r) => r.isActive)
        .toList();
    RelationFilter selectedFilter = RelationFilter.all;
    final Set<String> selectedIds = {};
    final String dialogTitle = _genericActionDisplayTitle(action);
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return StatefulBuilder(
          builder: (BuildContext ctx, StateSetter setDialogState) {
            final List<Relationship> filteredRels =
                RelationFilterUtils.applyFilter(activeRels, selectedFilter);
            final double dialogHeight = MediaQuery.of(ctx).size.height * 0.5;
            final double contentWidth = MediaQuery.of(ctx).size.width * 0.9;
            return AlertDialog(
              title: Text(dialogTitle),
              content: SizedBox(
                width: contentWidth,
                child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: dialogHeight,
                  maxHeight: dialogHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      action.description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    kVerticalGap12,
                    RelationFilterChipsWidget(
                      selected: selectedFilter,
                      onChanged: (RelationFilter filter) {
                        setDialogState(() {
                          selectedFilter = filter;
                        });
                      },
                    ),
                    kVerticalGap8,
                    Expanded(
                      child: filteredRels.isEmpty
                          ? Center(
                              child: Text(
                                selectedFilter == RelationFilter.all
                                    ? l10n.noRelationships
                                    : l10n.noOneInCategory,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            )
                          : SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: filteredRels
                                  .map((Relationship rel) {
                                    final bool isSelected =
                                        selectedIds.contains(rel.npc.id);
                                    final String displayName =
                                        rel.npc.alias ?? rel.npc.name;
                                    final String? relationshipLabel =
                                        getRelationshipTypeLabel?.call(
                                          rel.displayTypeId,
                                        );
                                    final bool isFamily =
                                        RelationFilterUtils.isFamilyRole(
                                          rel.npc.role,
                                        );
                                    final Widget titleWidget = isFamily
                                        ? Text(displayName)
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(displayName),
                                              if (relationshipLabel != null &&
                                                  relationshipLabel
                                                      .isNotEmpty) ...[
                                                kVerticalGap4,
                                                Text(
                                                  relationshipLabel,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall
                                                      ?.copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        )
                                                            .colorScheme
                                                            .onSurfaceVariant,
                                                      ),
                                                ),
                                              ],
                                            ],
                                          );
                                    return CheckboxListTile(
                                      title: titleWidget,
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
                                  })
                                  .toList(),
                              ),
                            ),
                    ),
                  ],
                ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: Text(l10n.back),
                ),
                TextButton(
                  onPressed: selectedIds.isEmpty ||
                          (canPerformAction?.call(action) == false)
                      ? null
                      : () async {
                          Navigator.of(ctx).pop();
                          final future = onActionTap?.call(
                            action,
                            selectedIds.toList(),
                          );
                          if (future != null) await future;
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
