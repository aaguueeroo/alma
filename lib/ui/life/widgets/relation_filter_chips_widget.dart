import 'package:flutter/material.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/l10n/app_localizations.dart';

/// Filter options for relationship lists (e.g. social view, NPC selection dialog).
enum RelationFilter {
  all,
  family,
  friends,
  love,
  work,
}

/// Reusable filter chips for filtering relationships by type.
class RelationFilterChipsWidget extends StatelessWidget {
  const RelationFilterChipsWidget({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final RelationFilter selected;
  final ValueChanged<RelationFilter> onChanged;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildChip(context, RelationFilter.all, l10n.filterAll),
          kHorizontalGap8,
          _buildChip(context, RelationFilter.family, l10n.filterFamily),
          kHorizontalGap8,
          _buildChip(context, RelationFilter.friends, l10n.filterFriends),
          kHorizontalGap8,
          _buildChip(context, RelationFilter.love, l10n.filterLove),
          kHorizontalGap8,
          _buildChip(context, RelationFilter.work, l10n.filterWork),
        ],
      ),
    );
  }

  Widget _buildChip(
    BuildContext context,
    RelationFilter filter,
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

/// Utilities for applying relationship filters.
class RelationFilterUtils {
  RelationFilterUtils._();

  static List<Relationship> applyFilter(
    List<Relationship> relationships,
    RelationFilter filter,
  ) {
    switch (filter) {
      case RelationFilter.all:
        return relationships;
      case RelationFilter.family:
        return relationships
            .where((Relationship r) => isFamilyRole(r.npc.role))
            .toList();
      case RelationFilter.friends:
        return relationships
            .where((Relationship r) => _isFriendRole(r.npc.role))
            .toList();
      case RelationFilter.love:
        return relationships
            .where((Relationship r) => _isRomanticRole(r.npc.role))
            .toList();
      case RelationFilter.work:
        return relationships
            .where((Relationship r) => _isWorkRole(r.npc.role))
            .toList();
    }
  }

  /// Returns true if the role represents a family relationship.
  static bool isFamilyRole(NpcRole role) {
    return role == NpcRole.parent ||
        role == NpcRole.sibling ||
        role == NpcRole.child ||
        role == NpcRole.grandparent ||
        role == NpcRole.uncle ||
        role == NpcRole.cousin ||
        role == NpcRole.nephew ||
        role == NpcRole.grandchild;
  }

  static bool _isFriendRole(NpcRole role) {
    return role == NpcRole.friend ||
        role == NpcRole.bestFriend ||
        role == NpcRole.acquaintance ||
        role == NpcRole.mentor ||
        role == NpcRole.rival;
  }

  static bool _isRomanticRole(NpcRole role) {
    return role == NpcRole.partner ||
        role == NpcRole.fiance ||
        role == NpcRole.spouse ||
        role == NpcRole.ex;
  }

  static bool _isWorkRole(NpcRole role) {
    return role == NpcRole.coworker ||
        role == NpcRole.boss ||
        role == NpcRole.workSpouse ||
        role == NpcRole.classmate;
  }
}
