import 'package:flutter/material.dart';
import 'package:alma/core/models/job.dart';
import 'package:alma/core/models/enums/job_type.dart';
import 'package:alma/core/engine/time_commitment.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';

class JobApplyDialog extends StatelessWidget {
  const JobApplyDialog({
    super.key,
    required this.availableJobs,
    required this.timeRemaining,
    required this.onJobSelected,
    required this.onDecline,
  });

  final List<Job> availableJobs;
  final int timeRemaining;
  final void Function(Job job) onJobSelected;
  final VoidCallback onDecline;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final Map<JobType, List<Job>> byType = _groupJobsByType(availableJobs);
    return Dialog(
      insetPadding: kPaddingHorizontal16,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: kMaxContentWidth,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
        ),
        child: Padding(
          padding: kPaddingAll24,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.availableJobs,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              kVerticalGap24,
              Expanded(
                child: availableJobs.isEmpty
                    ? Center(
                        child: Text(
                          l10n.noJobsAvailable,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                      )
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: _buildGroupedJobs(context, l10n, byType, timeRemaining),
                        ),
                      ),
              ),
              kVerticalGap8,
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: onDecline,
                  child: Text(l10n.back),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Map<JobType, List<Job>> _groupJobsByType(List<Job> jobs) {
    final Map<JobType, List<Job>> map = <JobType, List<Job>>{};
    for (final Job job in jobs) {
      map.putIfAbsent(job.type, () => <Job>[]).add(job);
    }
    return map;
  }

  List<Widget> _buildGroupedJobs(
    BuildContext context,
    AppLocalizations l10n,
    Map<JobType, List<Job>> byType,
    int timeRemaining,
  ) {
    final List<Widget> result = <Widget>[];
    for (final JobType type in JobType.values) {
      final List<Job>? jobs = byType[type];
      if (jobs == null || jobs.isEmpty) continue;
      final String typeLabel = switch (type) {
        JobType.fullTime => l10n.jobTypeFullTime,
        JobType.partTime => l10n.jobTypePartTime,
        JobType.casual => l10n.jobTypeCasual,
      };
      result.add(
        Padding(
          padding: const EdgeInsets.only(bottom: kSpacing8),
          child: Text(
            typeLabel,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      );
      for (final Job job in jobs) {
        final int commitmentDays = getJobCommitmentDays(job);
        final bool canApply = timeRemaining >= commitmentDays;
        result.add(
          Padding(
            padding: const EdgeInsets.only(bottom: kSpacing8),
            child: _JobChoiceButton(
              job: job,
              l10n: l10n,
              canApply: canApply,
              commitmentDays: commitmentDays,
              onTap: () => onJobSelected(job),
            ),
          ),
        );
      }
      result.add(const SizedBox(height: kSpacing12));
    }
    return result;
  }
}

class _JobChoiceButton extends StatelessWidget {
  const _JobChoiceButton({
    required this.job,
    required this.l10n,
    required this.canApply,
    required this.commitmentDays,
    required this.onTap,
  });

  final Job job;
  final AppLocalizations l10n;
  final bool canApply;
  final int commitmentDays;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final int salary = job.baseSalary;
    return SizedBox(
      width: double.infinity,
      child: Tooltip(
        message: canApply ? '' : l10n.jobNotEnoughTime(commitmentDays),
        child: OutlinedButton(
          onPressed: canApply ? onTap : null,
        style: OutlinedButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: kPaddingAll16,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    job.name,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  l10n.jobSalary(salary),
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
            kVerticalGap4,
            Text(
              job.description,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        ),
      ),
    );
  }
}
