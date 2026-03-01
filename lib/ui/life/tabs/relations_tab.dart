import 'package:flutter/material.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/durations.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/relation_tile_widget.dart';
import 'package:alma/ui/life/widgets/relation_detail_widget.dart';

enum _RelationFilter { all, family, friends, love, work }

class RelationsTab extends StatefulWidget {
  const RelationsTab({super.key, required this.relationships});

  final List<Relationship> relationships;

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
    return AnimatedSwitcher(
      duration: kDurationNormal,
      child: RelationDetailWidget(
        key: ValueKey(_selectedRelationship!.npc.id),
        relationship: _selectedRelationship!,
        onBack: () => setState(() => _selectedRelationship = null),
      ),
    );
  }

  Widget _buildListView() {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final List<Relationship> filtered = _applyFilter(widget.relationships);
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
                : ListView.separated(
                    padding: kPaddingHorizontal16,
                    itemCount: filtered.length,
                    separatorBuilder: (_, _) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      return RelationTileWidget(
                        relationship: filtered[index],
                        onTap: () => setState(
                          () => _selectedRelationship = filtered[index],
                        ),
                      );
                    },
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
        return relationships.where((r) => r.npc.role == NpcRole.partner).toList();
      case _RelationFilter.work:
        return relationships.where((r) => r.npc.role == NpcRole.coworker).toList();
    }
  }

  bool _isFamilyRole(NpcRole role) {
    return role == NpcRole.parent ||
        role == NpcRole.sibling ||
        role == NpcRole.child;
  }

  bool _isFriendRole(NpcRole role) {
    return role == NpcRole.friend ||
        role == NpcRole.mentor ||
        role == NpcRole.rival;
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
