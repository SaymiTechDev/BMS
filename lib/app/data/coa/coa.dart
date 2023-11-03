import 'package:freezed_annotation/freezed_annotation.dart';

part 'coa.freezed.dart';
part 'coa.g.dart';

@freezed
class Coa with _$Coa {
  const factory Coa(
    int? coaId,
    String? accountName,
    String? accountCode,
    String? accountType,
    String? parentAccount,
    String? balance,
    int? createdBy,
    DateTime? createdDate,
    int? isActive,
    String? company,
    String? companyName,
  ) = _Coa;

  factory Coa.fromJson(Map<String, Object?> json) => _$CoaFromJson(json);
}
