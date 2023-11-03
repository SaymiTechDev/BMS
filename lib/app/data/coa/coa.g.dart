// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoaImpl _$$CoaImplFromJson(Map<String, dynamic> json) => _$CoaImpl(
      json['coaId'] as int?,
      json['accountName'] as String?,
      json['accountCode'] as String?,
      json['accountType'] as String?,
      json['parentAccount'] as String?,
      json['balance'] as String?,
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['isActive'] as int?,
      json['company'] as String?,
      json['companyName'] as String?,
    );

Map<String, dynamic> _$$CoaImplToJson(_$CoaImpl instance) => <String, dynamic>{
      'coaId': instance.coaId,
      'accountName': instance.accountName,
      'accountCode': instance.accountCode,
      'accountType': instance.accountType,
      'parentAccount': instance.parentAccount,
      'balance': instance.balance,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
      'company': instance.company,
      'companyName': instance.companyName,
    };
