import 'package:flutter/material.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/education/education_state.dart';
import 'package:alma/core/models/education/enrollment.dart';
import 'package:alma/core/models/education/education_record.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/engine/time_commitment.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';
import 'package:alma/ui/life/widgets/log_preview_section.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({
    super.key,
    required this.state,
    required this.actions,
    required this.onActionTap,
    required this.onEnrollTap,
    required this.onDropOutTap,
    required this.canDropOut,
    required this.isStudyBlockedByHealth,
    required this.studyPerformancePenalty,
  });

  final LifeState state;
  final List<GameAction> actions;
  final void Function(GameAction) onActionTap;
  final VoidCallback onEnrollTap;
  final VoidCallback onDropOutTap;
  final bool canDropOut;
  final bool isStudyBlockedByHealth;
  final int studyPerformancePenalty;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final Section? eduSection = _findSection(SectionType.education);
    final int basePerformance = eduSection?.performance ?? 0;
    final int performance =
        (basePerformance + studyPerformancePenalty).clamp(0, 100);
    final EducationState? eduState = state.educationState;
    final Enrollment? enrollment = eduState?.currentEnrollment;
    final String subtitle = _buildSubtitle(enrollment, l10n);
    final String detail = _buildDetail(enrollment, l10n, performance);
    return SingleChildScrollView(
      padding: kPaddingScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeaderWidget(
            name: state.lifeData['name'] as String? ?? 'Unknown',
            subtitle: subtitle,
            detail: detail,
          ),
          kVerticalGap24,
          if (isStudyBlockedByHealth) ...[
            Container(
              padding: const EdgeInsets.all(kSpacing12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.errorContainer.withValues(
                      alpha: 0.3,
                    ),
                borderRadius: BorderRadius.circular(kBorderRadiusSmall),
              ),
              child: Text(
                l10n.healthBlocksStudy,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ),
            kVerticalGap16,
          ],
          if (enrollment != null) ...[
            StatBarWidget(
              label: l10n.effort,
              value: (performance + studyPerformancePenalty).clamp(0, 100) / 100,
            ),
            kVerticalGap24,
          ],
          _ActionButtonsRow(
            enrollLabel: l10n.enroll,
            dropOutLabel: l10n.dropOut,
            actionsLabel: l10n.studyActions,
            isEnrolled: enrollment != null,
            canDropOut: canDropOut,
            canEnroll: state.timeRemaining >= getEducationCommitmentDays(),
            onEnrollTap: onEnrollTap,
            onDropOutTap: onDropOutTap,
            onActionsTap: () => _showActionsDialog(context, l10n),
            isStudyBlockedByHealth: isStudyBlockedByHealth,
          ),
          kVerticalGap32,
          LogListWidget(
            title: l10n.degrees,
            emptyMessage: l10n.noStudyHistory,
            logs: _buildHistoryLogs(eduState, l10n),
          ),
          kVerticalGap24,
          LogPreviewSection(
            title: l10n.eventLog,
            emptyMessage: l10n.noEducationEvents,
            gameLogs: _filterEducationLogs(state.logs),
          ),
        ],
      ),
    );
  }

  String _buildSubtitle(Enrollment? enrollment, AppLocalizations l10n) {
    if (enrollment == null) return l10n.notEnrolled;
    return enrollment.programName;
  }

  String _buildDetail(Enrollment? enrollment, AppLocalizations l10n, int performance) {
    if (enrollment == null) return '';
    String detail = l10n.enrollmentYear(enrollment.yearInProgram, enrollment.totalYears);
    if (enrollment.repeatsInLevel > 0) {
      detail += ' - ${l10n.yearRepeated(enrollment.repeatsInLevel)}';
    }
    detail += ' - ${l10n.grade}: ${l10n.performancePercent(performance)}';
    return detail;
  }

  List<String> _buildHistoryLogs(EducationState? eduState, AppLocalizations l10n) {
    if (eduState == null) return [];
    return eduState.history.map((EducationRecord record) {
      final String status = record.graduated
          ? l10n.graduated
          : (record.isDropOut ? l10n.dropOut : l10n.kickedOut);
      final String details = record.isDropOut
          ? l10n.educationYearsLabel(record.startAge, record.endAge)
          : '${l10n.educationGradeLabel(record.finalGrade)}, '
              '${l10n.educationYearsLabel(record.startAge, record.endAge)}';
      return '${record.programName} - $status ($details)';
    }).toList();
  }

  List<GameLog> _filterEducationLogs(List<GameLog> logs) {
    return logs
        .where((GameLog log) =>
            log.category == LogCategory.education ||
            (log.category == LogCategory.social &&
                log.tags.contains('show_in_education')))
        .toList()
        .reversed
        .toList();
  }

  Section? _findSection(SectionType type) {
    for (final Section section in state.sections) {
      if (section.type == type) return section;
    }
    return null;
  }

  void _showActionsDialog(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(l10n.studyActions),
        content: actions.isEmpty
            ? Text(
                l10n.notEnrolled,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: actions.map((GameAction action) {
                    return _EducationActionTile(
                      action: action,
                      onTap: () {
                        Navigator.of(ctx).pop();
                        onActionTap(action);
                      },
                    );
                  }).toList(),
                ),
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
    required this.enrollLabel,
    required this.dropOutLabel,
    required this.actionsLabel,
    required this.isEnrolled,
    required this.canDropOut,
    required this.canEnroll,
    required this.onEnrollTap,
    required this.onDropOutTap,
    required this.onActionsTap,
    required this.isStudyBlockedByHealth,
  });

  final String enrollLabel;
  final String dropOutLabel;
  final String actionsLabel;
  final bool isEnrolled;
  final bool canDropOut;
  final bool canEnroll;
  final VoidCallback onEnrollTap;
  final VoidCallback onDropOutTap;
  final VoidCallback onActionsTap;
  final bool isStudyBlockedByHealth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: isEnrolled
                ? (canDropOut ? onDropOutTap : null)
                : (isStudyBlockedByHealth ? null : (canEnroll ? onEnrollTap : null)),
            child: Text(isEnrolled ? dropOutLabel : enrollLabel),
          ),
        ),
        kHorizontalGap12,
        Expanded(
          child: OutlinedButton(
            onPressed: isEnrolled && !isStudyBlockedByHealth
                ? onActionsTap
                : null,
            child: Text(actionsLabel),
          ),
        ),
      ],
    );
  }
}

class _EducationActionTile extends StatelessWidget {
  const _EducationActionTile({
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
