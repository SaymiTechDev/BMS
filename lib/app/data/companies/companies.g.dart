// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompaniesImpl _$$CompaniesImplFromJson(Map<String, dynamic> json) =>
    _$CompaniesImpl(
      json['companyId'] as int,
      json['companyName'] as String,
      json['displayName'] as String,
      json['phone'] as String,
      json['mobile'] as String,
      json['email'] as String,
      json['website'] as String,
      json['gstTreatment'] as String,
      json['gstNo'] as String,
      json['panNo'] as String,
      json['addressId'] as int,
      json['uniqueCode'] as String,
      json['createdBy'] as int,
      DateTime.parse(json['createdDate'] as String),
      json['isActive'] as bool,
    );

Map<String, dynamic> _$$CompaniesImplToJson(_$CompaniesImpl instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'displayName': instance.displayName,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'email': instance.email,
      'website': instance.website,
      'gstTreatment': instance.gstTreatment,
      'gstNo': instance.gstNo,
      'panNo': instance.panNo,
      'addressId': instance.addressId,
      'uniqueCode': instance.uniqueCode,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
      'isActive': instance.isActive,
    };
