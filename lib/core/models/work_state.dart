import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/employment.dart';
import 'package:alma/core/models/work_record.dart';
import 'package:alma/core/models/work_prompt.dart';

part 'work_state.freezed.dart';
part 'work_state.g.dart';

@freezed
sealed class WorkState with _$WorkState {
  const factory WorkState({
    @Default([]) List<Employment> currentEmployments,
    @Default([]) List<WorkRecord> history,
    WorkPrompt? pendingPrompt,
    @Default({}) Map<String, List<GameAction>> performedActionsByJobIdThisYear,
    @Default([]) List<String> completedCasualJobIdsThisYear,
  }) = _WorkState;

  factory WorkState.fromJson(Map<String, dynamic> json) =>
      _$WorkStateFromJson(json);
}
