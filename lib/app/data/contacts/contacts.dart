import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts.freezed.dart';
part 'contacts.g.dart';

@freezed
class Contacts with _$Contacts {
  const factory Contacts(
    int? contactId,
    ContactType? contactType,
    String? name,
    String? displayName,
    String? phone,
    String? mobile,
    String? email,
    String? website,
    String? gstTreatment,
    String? gstNo,
    String? panNo,
    String? paymentTerms,
    double? discount,
    String? relationShipType,
    String? bankName,
    String? benificiaryName,
    String? accountNo,
    String? ifscCode,
    String? upiId,
    String? accountPayable,
    String? accountReceivable,
    String? uniqueCode,
    int? createdBy,
    DateTime? createdDate,
    int? isActive,
    String? company,
    String? companyName,
  ) = _Contacts;
  factory Contacts.fromJson(Map<String, Object?> json) =>
      _$ContactsFromJson(json);
}

enum ContactType { C, I }
