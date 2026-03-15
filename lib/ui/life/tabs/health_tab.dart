import 'package:flutter/material.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/health/health_action.dart';
import 'package:alma/core/models/health/health_state.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/log_preview_section.dart';
import 'package:alma/ui/life/widgets/health_action_tile_widget.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';
import 'package:alma/providers/life/life_controller.dart';

class HealthTab extends StatelessWidget {
  const HealthTab({
    super.key,
    required this.state,
    required this.timeRemaining,
    required this.controller,
  });

  final LifeState state;
  final int timeRemaining;
  final LifeController controller;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final HealthState? healthState = state.healthState;
    final int displayHealth = state.displayHealth;
    final double physicalHealth =
        (healthState?.physicalHealth ?? displayHealth.toDouble()) / 100;
    final double mentalHealth =
        (healthState?.mentalHealth ?? displayHealth.toDouble()) / 100;
    final List<HealthAction> hospitalActions = controller.getHospitalActions();
    final List<HealthAction> generalActions = controller
        .getGeneralHealthActions();
    final List<String> diagnosedConditions =
        healthState?.conditions
            .where((c) => c.isDiagnosed)
            .map((c) => c.name)
            .toList() ??
        [];
    final List<String> symptoms =
        healthState?.symptoms.map((s) => s.description).toList() ?? [];
    return SingleChildScrollView(
      padding: kPaddingScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeaderWidget(
            name: state.lifeData['name'] as String? ?? 'Unknown',
            subtitle: l10n.healthStatus(displayHealth),
          ),
          kVerticalGap24,
          StatBarWidget(label: l10n.physicalHealth, value: physicalHealth),
          kVerticalGap12,
          StatBarWidget(label: l10n.mentalHealth, value: mentalHealth),
          if (diagnosedConditions.isNotEmpty) ...[
            kVerticalGap16,
            Text(
              l10n.diagnosedConditions,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            kVerticalGap8,
            Wrap(
              spacing: kSpacing8,
              runSpacing: kSpacing8,
              children: diagnosedConditions
                  .map(
                    (name) => Chip(
                      label: Text(name),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerHighest,
                    ),
                  )
                  .toList(),
            ),
          ],
          if (controller.isWorkBlockedByHealth ||
              controller.isStudyBlockedByHealth) ...[
            kVerticalGap16,
            Container(
              padding: const EdgeInsets.all(kSpacing12),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.errorContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(kBorderRadiusSmall),
              ),
              child: Text(
                controller.isWorkBlockedByHealth &&
                        controller.isStudyBlockedByHealth
                    ? l10n.healthBlocksWorkAndStudy
                    : controller.isWorkBlockedByHealth
                    ? l10n.healthBlocksWork
                    : l10n.healthBlocksStudy,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ],
          if (symptoms.isNotEmpty) ...[
            kVerticalGap16,
            Text(
              l10n.symptoms,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            kVerticalGap8,
            Text(
              l10n.youFeelSymptoms(symptoms.join(' ')),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
          kVerticalGap24,
          Text(
            l10n.healthActions,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          kVerticalGap12,
          if (hospitalActions.isEmpty && generalActions.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kSpacing16),
              child: Text(
                l10n.noHealthActionsAvailable,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            )
          else ...[
            if (hospitalActions.isNotEmpty)
              OutlinedButton.icon(
                onPressed: () => _showHospitalDialog(context),
                icon: const Icon(Icons.local_hospital_outlined),
                label: Text(l10n.hospital),
              ),
            if (hospitalActions.isNotEmpty && generalActions.isNotEmpty)
              kVerticalGap8,
            if (generalActions.isNotEmpty)
              OutlinedButton.icon(
                onPressed: () => _showGeneralActionsDialog(context),
                icon: const Icon(Icons.self_improvement_outlined),
                label: Text(
                  l10n.healthActions,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
          ],
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

  void _showHospitalDialog(BuildContext context) {
    final List<HealthAction> actions = controller.getHospitalActions();
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.hospital),
        content: SizedBox(
          width: double.maxFinite,
          child: actions.isEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: kSpacing16),
                  child: Text(
                    AppLocalizations.of(context)!.noHealthActionsAvailable,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: actions.length,
                  itemBuilder: (_, int i) {
                    final HealthAction action = actions[i];
                    final bool canAfford = timeRemaining >= action.timeCost;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: kSpacing8),
                      child: HealthActionTileWidget(
                        action: action,
                        isEnabled: canAfford,
                        onTap: () {
                          Navigator.of(ctx).pop();
                          controller.performHealthAction(action);
                        },
                      ),
                    );
                  },
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ],
      ),
    );
  }

  void _showGeneralActionsDialog(BuildContext context) {
    final List<HealthAction> actions = controller.getGeneralHealthActions();
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.healthActions),
        content: SizedBox(
          width: double.maxFinite,
          child: actions.isEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: kSpacing16),
                  child: Text(
                    AppLocalizations.of(context)!.noHealthActionsAvailable,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: actions.length,
                  itemBuilder: (_, int i) {
                    final HealthAction action = actions[i];
                    final bool canAfford = timeRemaining >= action.timeCost;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: kSpacing8),
                      child: HealthActionTileWidget(
                        action: action,
                        isEnabled: canAfford,
                        onTap: () {
                          if (canAfford) {
                            Navigator.of(ctx).pop();
                            controller.performHealthAction(action);
                          }
                        },
                      ),
                    );
                  },
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ],
      ),
    );
  }
}
