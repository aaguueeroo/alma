import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/work_state.dart';
import 'package:alma/core/models/employment.dart';
import 'package:alma/core/models/education_state.dart';
import 'package:alma/core/models/job.dart';
import 'package:alma/core/models/life_maintenance_item.dart';
import 'package:alma/core/models/enums/job_type.dart';
import 'package:alma/app/constants/time_constants.dart';

/// Commitment days per year for full-time education (40 h/week).
int getEducationCommitmentDays() {
  return ((kFullTimeHoursPerWeek * 52) / 24).round();
}

/// Commitment days per year for a job. [Job.timeCost] is hours per week.
int getJobCommitmentDays(Job job) {
  return ((job.timeCost * 52) / 24).round();
}

/// Commitment days per year from hours per week (e.g. for employments).
int getCommitmentDaysFromHoursPerWeek(int hoursPerWeek) {
  return ((hoursPerWeek * 52) / 24).round();
}

/// Commitment days per year from life maintenance (sleep, hygiene, eating, etc.).
/// Formula: (hoursPerDay * 365) / 24 per item. Empty list returns 0.
int getLifeMaintenanceCommitmentDays(List<LifeMaintenanceItem> items) {
  int total = 0;
  for (final LifeMaintenanceItem item in items) {
    total += ((item.hoursPerDay * 365) / 24).round();
  }
  return total;
}

int _defaultHoursPerWeekForJobType(JobType type) {
  switch (type) {
    case JobType.fullTime:
      return kFullTimeHoursPerWeek;
    case JobType.partTime:
      return kPartTimeHoursPerWeek;
    case JobType.casual:
      return 10;
  }
}

/// Computes total commitment days per year from work and education.
/// Work: uses each employment's [Employment.hoursPerWeek], or type default if null (legacy).
/// Education: 40 h/week if enrolled.
int getYearStartCommitmentDays(LifeState state) {
  int days = 0;
  final WorkState? workState = state.workState;
  if (workState != null) {
    for (final Employment e in workState.currentEmployments) {
      final int hours = e.hoursPerWeek ?? _defaultHoursPerWeekForJobType(e.type);
      days += getCommitmentDaysFromHoursPerWeek(hours);
    }
  }
  final EducationState? eduState = state.educationState;
  if (eduState?.currentEnrollment != null &&
      eduState!.currentEnrollment!.isActive) {
    days += getEducationCommitmentDays();
  }
  return days;
}
