import 'package:flutter/material.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/log_preview_section.dart';
import 'package:alma/ui/life/widgets/action_tile_widget.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';

class HealthTab extends StatelessWidget {
  const HealthTab({
    super.key,
    required this.state,
    required this.actions,
    required this.timeRemaining,
    required this.onActionTap,
  });

  final LifeState state;
  final List<GameAction> actions;
  final int timeRemaining;
  final void Function(GameAction) onActionTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      padding: kPaddingScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeaderWidget(
            name: state.lifeData['name'] as String? ?? 'Unknown',
            subtitle: l10n.healthStatus(state.health),
          ),
          kVerticalGap24,
          StatBarWidget(
            label: l10n.health,
            value: state.health / 100,
          ),
          kVerticalGap32,
          Text(
            l10n.healthActions,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          kVerticalGap12,
          if (actions.isEmpty)
            Padding(
              padding: kPaddingAll24,
              child: Center(
                child: Text(
                  l10n.notImplementedYet,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
            )
          else
            ...actions.map((GameAction action) {
              final bool canAfford = timeRemaining >= action.timeCost;
              return ActionTileWidget(
                action: action,
                isEnabled: canAfford,
                onTap: () => onActionTap(action),
              );
            }),
          kVerticalGap32,
          LogPreviewSection(
            title: l10n.eventLog,
            emptyMessage: l10n.noEventsRecorded,
            gameLogs: state.logs
                .where((GameLog log) => log.category == LogCategory.health)
                .toList()
                .reversed
                .toList(),
          ),
        ],
      ),
    );
  }
}
