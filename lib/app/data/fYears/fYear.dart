import 'package:freezed_annotation/freezed_annotation.dart';

part 'fYear.freezed.dart';
part 'fYear.g.dart';

@freezed
class FYear with _$FYear {
  const factory FYear(
    int fYearId,
    String fYear,
    DateTime startDate,
    DateTime endDate,
    int createdBy,
    DateTime createdDate,
    bool isActive,
  ) = _FYear;

  factory FYear.fromJson(Map<String, Object?> json) => _$FYearFromJson(json);
}
