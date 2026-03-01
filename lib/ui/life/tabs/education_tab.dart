import 'package:flutter/material.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({
    super.key,
    required this.state,
    required this.actions,
    required this.onActionTap,
  });

  final LifeState state;
  final List<GameAction> actions;
  final void Function(GameAction) onActionTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final Section? eduSection = _findSection(SectionType.education);
    final String studyLabel = eduSection?.contextLabel ?? '';
    final int performance = eduSection?.performance ?? 0;
    return SingleChildScrollView(
      padding: kPaddingScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeaderWidget(
            name: state.lifeData['name'] as String? ?? 'Unknown',
            subtitle: studyLabel.isNotEmpty ? studyLabel : l10n.studyTitle,
            detail: '${l10n.grade}: ${l10n.performancePercent(performance)}',
          ),
          kVerticalGap24,
          StatBarWidget(
            label: l10n.effort,
            value: performance / 100,
          ),
          kVerticalGap24,
          _ActionButtonsRow(
            leftLabel: l10n.enroll,
            rightLabel: l10n.studyActions,
            onLeftTap: () => _showPlaceholderDialog(
              context,
              l10n.availableDegrees,
              l10n.noDegreesAvailable,
            ),
            onRightTap: () => _showActionsDialog(context, l10n),
          ),
          kVerticalGap32,
          LogListWidget(
            title: l10n.degrees,
            emptyMessage: l10n.noStudyHistory,
          ),
          kVerticalGap24,
          LogListWidget(
            title: l10n.eventLog,
            emptyMessage: l10n.noEducationEvents,
          ),
        ],
      ),
    );
  }

  Section? _findSection(SectionType type) {
    for (final Section section in state.sections) {
      if (section.type == type) return section;
    }
    return null;
  }

  void _showPlaceholderDialog(
    BuildContext context,
    String title,
    String message,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(title),
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(AppLocalizations.of(context)!.back),
          ),
        ],
      ),
    );
  }

  void _showActionsDialog(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(l10n.studyActions),
        content: actions.isEmpty
            ? Text(
                l10n.notImplementedYet,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: actions.map((GameAction action) {
                  return ListTile(
                    title: Text(action.name),
                    subtitle: Text(action.description),
                    onTap: () {
                      Navigator.of(ctx).pop();
                      onActionTap(action);
                    },
                  );
                }).toList(),
              ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.back),
          ),
        ],
      ),
    );
  }
}

class _ActionButtonsRow extends StatelessWidget {
  const _ActionButtonsRow({
    required this.leftLabel,
    required this.rightLabel,
    required this.onLeftTap,
    required this.onRightTap,
  });

  final String leftLabel;
  final String rightLabel;
  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: onLeftTap,
            child: Text(leftLabel),
          ),
        ),
        kHorizontalGap12,
        Expanded(
          child: OutlinedButton(
            onPressed: onRightTap,
            child: Text(rightLabel),
          ),
        ),
      ],
    );
  }
}
