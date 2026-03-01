import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';

part 'moral_impact.freezed.dart';
part 'moral_impact.g.dart';

/// A single moral impact produced by an action or event.
/// Weight is 0.5–5.0; contextMultiplier adjusts for context (e.g. relationship, stakes).
/// Effective impact = weight * contextMultiplier.
@freezed
sealed class MoralImpact with _$MoralImpact {
  const MoralImpact._();

  const factory MoralImpact({
    required SoulSubjectType axis,
    required double weight,
    @Default(1.0) double contextMultiplier,
    required int year,
    @Default(false) bool wasDifficult,
  }) = _MoralImpact;

  factory MoralImpact.fromJson(Map<String, dynamic> json) =>
      _$MoralImpactFromJson(json);

  /// Effective impact for this moment (weight × context).
  double get effectiveImpact => weight * contextMultiplier;
}

/// Template for defining moral impacts on actions/events (no year yet).
/// Converted to [MoralImpact] with [year] when recorded during simulation.
@freezed
sealed class MoralImpactTemplate with _$MoralImpactTemplate {
  const factory MoralImpactTemplate({
    required SoulSubjectType axis,
    required double weight,
    @Default(1.0) double contextMultiplier,
    @Default(false) bool wasDifficult,
  }) = _MoralImpactTemplate;

  factory MoralImpactTemplate.fromJson(Map<String, dynamic> json) =>
      _$MoralImpactTemplateFromJson(json);
}

extension MoralImpactTemplateExtension on MoralImpactTemplate {
  MoralImpact toImpact(int year) {
    return MoralImpact(
      axis: axis,
      weight: weight,
      contextMultiplier: contextMultiplier,
      year: year,
      wasDifficult: wasDifficult,
    );
  }
}

/// Summary of moral impacts for a life, computed at death.
/// Used by [SoulSubjectEvaluator] to evaluate subject pass/fail.
@freezed
sealed class MoralImpactSummary with _$MoralImpactSummary {
  const MoralImpactSummary._();

  const factory MoralImpactSummary({
    required Map<SoulSubjectType, double> totalWeightedImpactByAxis,
    required double diversityScore,
    required double consistencyScore,
    required int difficultActionCount,
    required double difficultWeightedSum,
  }) = _MoralImpactSummary;

  factory MoralImpactSummary.fromJson(Map<String, dynamic> json) =>
      _$MoralImpactSummaryFromJson(json);

  double totalImpactFor(SoulSubjectType axis) =>
      totalWeightedImpactByAxis[axis] ?? 0.0;
}
