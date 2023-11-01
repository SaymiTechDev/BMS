import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';
part 'states.g.dart';

@freezed
class States with _$States {
  const factory States(
    int? stateId,
    String? stateCode,
    String? state,
    int? createdBy,
    DateTime? createdDate,
    int? isActive,
  ) = _States;

  factory States.fromJson(Map<String, Object?> json) => _$StatesFromJson(json);
}
