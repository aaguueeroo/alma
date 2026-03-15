import 'dart:math' as math;
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';

/// Computes [MoralImpactSummary] from a life's accumulated [MoralImpact]s.
/// Used at death to evaluate soul subjects (total weighted impact,
/// diversity, consistency over time, difficulty).
class SoulSubjectEvaluator {
  SoulSubjectEvaluator._();

  static final int _totalAxes = SoulSubjectType.values.length;

  /// Builds the summary from all moral impacts recorded during the life.
  /// [lifeYears] is used to normalize consistency (spread over time).
  static MoralImpactSummary computeSummary(
    List<MoralImpact> impacts,
    int lifeYears,
  ) {
    if (impacts.isEmpty) {
      return MoralImpactSummary(
        totalWeightedImpactByAxis: _emptyAxisMap(),
        diversityScore: 0.0,
        consistencyScore: 0.0,
        difficultActionCount: 0,
        difficultWeightedSum: 0.0,
      );
    }
    final Map<SoulSubjectType, double> totalByAxis = _emptyAxisMap();
    int difficultCount = 0;
    double difficultSum = 0.0;
    final Map<int, double> impactByYear = <int, double>{};
    for (final MoralImpact impact in impacts) {
      totalByAxis[impact.axis] =
          (totalByAxis[impact.axis] ?? 0.0) + impact.effectiveImpact;
      if (impact.wasDifficult) {
        difficultCount++;
        difficultSum += impact.effectiveImpact;
      }
      impactByYear[impact.year] =
          (impactByYear[impact.year] ?? 0.0) + impact.effectiveImpact;
    }
    final double diversityScore = _computeDiversity(totalByAxis);
    final double consistencyScore = _computeConsistency(
      impactByYear,
      lifeYears,
    );
    return MoralImpactSummary(
      totalWeightedImpactByAxis: totalByAxis,
      diversityScore: diversityScore,
      consistencyScore: consistencyScore,
      difficultActionCount: difficultCount,
      difficultWeightedSum: difficultSum,
    );
  }

  static Map<SoulSubjectType, double> _emptyAxisMap() {
    return Map<SoulSubjectType, double>.fromEntries(
      SoulSubjectType.values.map((e) => MapEntry(e, 0.0)),
    );
  }

  /// Diversity: share of axes that received at least one impact (0..1).
  /// More axes touched = more diverse moral life.
  static double _computeDiversity(Map<SoulSubjectType, double> totalByAxis) {
    final int axesWithImpact = totalByAxis.values.where((v) => v > 0).length;
    return axesWithImpact / _totalAxes;
  }

  /// Consistency: how spread impacts are over time (0..1).
  /// More years with at least one impact relative to life length = more consistent.
  static double _computeConsistency(
    Map<int, double> impactByYear,
    int lifeYears,
  ) {
    if (lifeYears <= 0 || impactByYear.isEmpty) return 0.0;
    final int yearsWithImpact = impactByYear.length;
    final double spreadRatio = yearsWithImpact / math.max(1, lifeYears);
    return spreadRatio.clamp(0.0, 1.0);
  }
}
