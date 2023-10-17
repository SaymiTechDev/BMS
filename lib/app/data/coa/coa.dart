import 'package:freezed_annotation/freezed_annotation.dart';

part 'coa.freezed.dart';
part 'coa.g.dart';

@freezed
class Coa with _$Coa {
  const factory Coa(
    int coaId,
    String accountName,
    String accountCode,
    AccountType accountType,
    String parentAccount,
    double balance,
    int createdBy,
    DateTime createdDate,
    bool isActive,
  ) = _Coa;

  factory Coa.fromJson(Map<String, Object?> json) => _$CoaFromJson(json);
}

enum AccountType {
  assets,
  liability,
  equity,
  income,
  expense,
}
