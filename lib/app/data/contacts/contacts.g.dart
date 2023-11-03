// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactsImpl _$$ContactsImplFromJson(Map<String, dynamic> json) =>
    _$ContactsImpl(
      json['contactId'] as int?,
      $enumDecodeNullable(_$ContactTypeEnumMap, json['contactType']),
      json['name'] as String?,
      json['displayName'] as String?,
      json['phone'] as String?,
      json['mobile'] as String?,
      json['email'] as String?,
      json['website'] as String?,
      json['gstTreatment'] as String?,
      json['gstNo'] as String?,
      json['panNo'] as String?,
      json['paymentTerms'] as String?,
      (json['discount'] as num?)?.toDouble(),
      json['relationShipType'] as String?,
      json['bankName'] as String?,
      json['benificiaryName'] as String?,
      json['accountNo'] as String?,
      json['ifscCode'] as String?,
      json['upiId'] as String?,
      json['accountPayable'] as String?,
      json['accountReceivable'] as String?,
      json['uniqueCode'] as String?,
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['isActive'] as int?,
      json['company'] as String?,
      json['companyName'] as String?,
    );

Map<String, dynamic> _$$ContactsImplToJson(_$ContactsImpl instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'contactType': _$ContactTypeEnumMap[instance.contactType],
      'name': instance.name,
      'displayName': instance.displayName,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'email': instance.email,
      'website': instance.website,
      'gstTreatment': instance.gstTreatment,
      'gstNo': instance.gstNo,
      'panNo': instance.panNo,
      'paymentTerms': instance.paymentTerms,
      'discount': instance.discount,
      'relationShipType': instance.relationShipType,
      'bankName': instance.bankName,
      'benificiaryName': instance.benificiaryName,
      'accountNo': instance.accountNo,
      'ifscCode': instance.ifscCode,
      'upiId': instance.upiId,
      'accountPayable': instance.accountPayable,
      'accountReceivable': instance.accountReceivable,
      'uniqueCode': instance.uniqueCode,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
      'company': instance.company,
      'companyName': instance.companyName,
    };

const _$ContactTypeEnumMap = {
  ContactType.C: 'C',
  ContactType.I: 'I',
};
