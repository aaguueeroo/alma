import 'package:flutter/material.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/employment.dart';
import 'package:alma/core/models/work_state.dart';
import 'package:alma/core/models/work_record.dart';
import 'package:alma/core/models/enums/job_type.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/life/widgets/person_header_widget.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';

class WorkTab extends StatelessWidget {
  const WorkTab({
    super.key,
    required this.state,
    required this.actionsByJobId,
    required this.onActionTap,
    required this.onGetJobTap,
    required this.onQuitJobTap,
    required this.onAskPromotionTap,
  });

  final LifeState state;
  final Map<String, List<GameAction>> actionsByJobId;
  final void Function(GameAction action, {String? workJobId}) onActionTap;
  final VoidCallback onGetJobTap;
  final void Function(String jobId) onQuitJobTap;
  final void Function(String jobId) onAskPromotionTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final WorkState? workState = state.workState;
    final List<Employment> employments = workState?.currentEmployments ?? [];
    final String subtitle = employments.isEmpty
        ? l10n.unemployed
        : employments.map((Employment e) => e.jobName).join(', ');
    final int totalSalary =
        employments.fold(0, (int sum, Employment e) => sum + e.salary);
    return SingleChildScrollView(
      padding: kPaddingScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeaderWidget(
            name: state.lifeData['name'] as String? ?? 'Unknown',
            subtitle: subtitle,
            detail: totalSalary > 0 ? l10n.salaryAmount(totalSalary) : '',
          ),
          kVerticalGap24,
          if (employments.isNotEmpty)
            ...employments.map((Employment employment) {
              final List<GameAction> jobActions =
                  actionsByJobId[employment.jobId] ?? [];
              final List<GameAction> performedThisYear =
                  workState?.performedActionsByJobIdThisYear[employment.jobId] ??
                      [];
              return _EmploymentCard(
                employment: employment,
                jobActions: jobActions,
                performedThisYear: performedThisYear,
                onQuitTap: () => onQuitJobTap(employment.jobId),
                onPromotionTap: () => onAskPromotionTap(employment.jobId),
                onActionsTap: () => _showActionsDialog(
                  context,
                  l10n,
                  employment.jobName,
                  employment.jobId,
                  jobActions,
                ),
                l10n: l10n,
              );
            }),
          kVerticalGap12,
          _WorkActionButtonsRow(
            getJobLabel: l10n.getJob,
            onGetJobTap: onGetJobTap,
          ),
          kVerticalGap32,
          LogListWidget(
            title: l10n.cv,
            emptyMessage: l10n.noWorkHistory,
            logs: _buildHistoryLogs(workState, l10n),
          ),
          kVerticalGap24,
          LogListWidget(
            title: l10n.eventLog,
            emptyMessage: l10n.noWorkEvents,
          ),
        ],
      ),
    );
  }

  List<String> _buildHistoryLogs(WorkState? workState, AppLocalizations l10n) {
    if (workState == null) return [];
    return workState.history.map((WorkRecord record) {
      final String reason = switch (record.quitReason) {
        'quit' => l10n.workRecordQuit,
        'fired' => l10n.workRecordFired,
        'casual_completed' => l10n.workRecordCasualCompleted,
        _ => record.quitReason,
      };
      return '${record.jobName} - $reason (${l10n.workYearsLabel(record.startAge, record.endAge)})';
    }).toList();
  }

  void _showActionsDialog(
    BuildContext context,
    AppLocalizations l10n,
    String jobName,
    String jobId,
    List<GameAction> jobActions,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text('${l10n.jobActions} – $jobName'),
        content: jobActions.isEmpty
            ? Text(
                l10n.noCurrentJob,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: jobActions.map((GameAction action) {
                    return _WorkActionTile(
                      action: action,
                      onTap: () {
                        Navigator.of(ctx).pop();
                        onActionTap(action, workJobId: jobId);
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

class _EmploymentCard extends StatelessWidget {
  const _EmploymentCard({
    required this.employment,
    required this.jobActions,
    required this.performedThisYear,
    required this.onQuitTap,
    required this.onPromotionTap,
    required this.onActionsTap,
    required this.l10n,
  });

  final Employment employment;
  final List<GameAction> jobActions;
  final List<GameAction> performedThisYear;
  final VoidCallback onQuitTap;
  final VoidCallback onPromotionTap;
  final VoidCallback onActionsTap;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final String typeLabel = switch (employment.type) {
      JobType.fullTime => l10n.jobTypeFullTime,
      JobType.partTime => l10n.jobTypePartTime,
      JobType.casual => l10n.jobTypeCasual,
    };
    return Padding(
      padding: const EdgeInsets.only(bottom: kSpacing12),
      child: Card(
        child: Padding(
          padding: kPaddingAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      employment.jobName,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kSpacing8,
                      vertical: kSpacing4,
                    ),
                    decoration: BoxDecoration(
                      color:
                          Theme.of(context).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(kBorderRadiusSmall),
                    ),
                    child: Text(
                      typeLabel,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              kVerticalGap8,
              Text(
                '${l10n.jobLevel(employment.currentLevel)} • ${l10n.jobSalary(employment.salary)}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
              kVerticalGap12,
              StatBarWidget(
                label: l10n.effort,
                value: employment.performance / 100,
              ),
              if (performedThisYear.isNotEmpty) ...[
                kVerticalGap8,
                Text(
                  l10n.actionsThisYear,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                kVerticalGap4,
                ...performedThisYear.map(
                  (GameAction a) => Padding(
                    padding: const EdgeInsets.only(bottom: kSpacing4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          size: kIconSizeSmall,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        kHorizontalGap8,
                        Expanded(
                          child: Text(
                            a.name,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              kVerticalGap12,
              OutlinedButton(
                onPressed: jobActions.isEmpty ? null : onActionsTap,
                child: Text(l10n.jobActions),
              ),
              if (employment.type != JobType.casual) ...[
                kVerticalGap8,
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: onPromotionTap,
                        child: Text(l10n.askPromotion),
                      ),
                    ),
                    kHorizontalGap12,
                    Expanded(
                      child: OutlinedButton(
                        onPressed: onQuitTap,
                        child: Text(l10n.quitJob),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _WorkActionButtonsRow extends StatelessWidget {
  const _WorkActionButtonsRow({
    required this.getJobLabel,
    required this.onGetJobTap,
  });

  final String getJobLabel;
  final VoidCallback onGetJobTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onGetJobTap,
        child: Text(getJobLabel),
      ),
    );
  }
}

class _WorkActionTile extends StatelessWidget {
  const _WorkActionTile({
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
          '${action.timeCost}t',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
      onTap: onTap,
    );
  }
}
