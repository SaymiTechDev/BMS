import 'package:freezed_annotation/freezed_annotation.dart';

part 'companies.freezed.dart';
part 'companies.g.dart';

@freezed
class Companies with _$Companies {
  const factory Companies(
    int companyId,
    String companyName,
    String displayName,
    String phone,
    String mobile,
    String email,
    String website,
    String gstTreatment,
    String gstNo,
    String panNo,
    int addressId,
    String uniqueCode,
    int createdBy,
    DateTime createdDate,
    bool isActive,
  ) = _Companies;

  factory Companies.fromJson(Map<String, Object?> json) =>
      _$CompaniesFromJson(json);
}
