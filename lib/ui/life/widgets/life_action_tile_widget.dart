import 'package:flutter/material.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/health/health_action.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/l10n/app_localizations.dart';

/// A unified action tile widget used across work, education, health, and social.
/// Simple layout: title, description, and a chip for time cost.
class LifeActionTileWidget extends StatelessWidget {
  const LifeActionTileWidget({
    super.key,
    required this.name,
    required this.description,
    required this.timeCost,
    required this.category,
    required this.onTap,
    this.isEnabled = true,
    this.displayTitle,
  });

  final String name;
  final String description;
  final int timeCost;
  final ActionCategory category;
  final VoidCallback onTap;
  final bool isEnabled;
  final String? displayTitle;

  factory LifeActionTileWidget.fromGameAction({
    Key? key,
    required GameAction action,
    required VoidCallback onTap,
    bool isEnabled = true,
    String? displayTitle,
  }) {
    return LifeActionTileWidget(
      key: key,
      name: action.name,
      description: action.description,
      timeCost: action.timeCost,
      category: action.category,
      onTap: onTap,
      isEnabled: isEnabled,
      displayTitle: displayTitle,
    );
  }

  factory LifeActionTileWidget.fromHealthAction({
    Key? key,
    required HealthAction action,
    required VoidCallback onTap,
    bool isEnabled = true,
  }) {
    return LifeActionTileWidget(
      key: key,
      name: action.name,
      description: action.description,
      timeCost: action.timeCost,
      category: ActionCategory.health,
      onTap: onTap,
      isEnabled: isEnabled,
    );
  }

  @override
  Widget build(BuildContext context) {
    final String title = displayTitle ?? name;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      enabled: isEnabled,
      title: Text(title),
      subtitle: Text(description),
      trailing: Chip(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        label: Text(
          AppLocalizations.of(context)!.timeCostLabel(timeCost),
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
      onTap: isEnabled ? onTap : null,
    );
  }
}
