import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_repository.freezed.dart';
part 'name_repository.g.dart';

@freezed
sealed class NameRepository with _$NameRepository {
  const factory NameRepository({
    required String country,
    required NameSet firstNames,
    required List<String> lastNames,
  }) = _NameRepository;

  factory NameRepository.fromJson(Map<String, dynamic> json) =>
      _$NameRepositoryFromJson(json);
}

@freezed
sealed class NameSet with _$NameSet {
  const factory NameSet({
    required List<String> male,
    required List<String> female,
  }) = _NameSet;

  factory NameSet.fromJson(Map<String, dynamic> json) =>
      _$NameSetFromJson(json);
}
