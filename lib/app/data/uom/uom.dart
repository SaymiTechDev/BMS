import 'package:freezed_annotation/freezed_annotation.dart';

part 'uom.freezed.dart';
part 'uom.g.dart';

@freezed
class Uom with _$Uom {
  const factory Uom(
    int? uomId,
    String? uomCode,
    String? uom,
    int? isActive,
  ) = _Uom;

  factory Uom.fromJson(Map<String, Object?> json) => _$UomFromJson(json);
}
