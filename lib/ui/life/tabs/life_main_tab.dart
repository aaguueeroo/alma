import 'package:flutter/material.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';
import 'package:alma/ui/shared/radar_chart_widget.dart';

class LifeMainTab extends StatelessWidget {
  const LifeMainTab({super.key, required this.state});

  final LifeState state;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final String currentTitle = _resolveTitle(state.sections);
    return SingleChildScrollView(
      padding: kPaddingScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeaderWidget(
            name: state.lifeData['name'] as String? ?? 'Unknown',
            subtitle: l10n.age(state.age),
            detail: currentTitle.isNotEmpty ? currentTitle : null,
          ),
          kVerticalGap32,
          Center(
            child: RadarChartWidget(
              values: {
                l10n.intelligence: state.skills.intelligence / 100,
                l10n.creativity: state.skills.creativity / 100,
                l10n.communication: state.skills.communication / 100,
                l10n.emotionalStability: state.skills.emotionalStability / 100,
                l10n.fitness: state.skills.fitness / 100,
              },
              size: kRadarChartSize,
            ),
          ),
          kVerticalGap32,
          LogListWidget(
            title: l10n.lifeLog,
            emptyMessage: l10n.noLogsRecorded,
            gameLogs: state.logs.reversed.toList(),
            relationships: state.socialState?.relationships ?? state.relationships,
          ),
        ],
      ),
    );
  }

  String _resolveTitle(List<Section> sections) {
    for (final Section section in sections) {
      if (section.contextLabel.isNotEmpty) {
        return section.contextLabel;
      }
    }
    return '';
  }
}
