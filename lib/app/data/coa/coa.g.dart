// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoaImpl _$$CoaImplFromJson(Map<String, dynamic> json) => _$CoaImpl(
      json['coaId'] as int,
      json['accountName'] as String,
      json['accountCode'] as String,
      $enumDecode(_$AccountTypeEnumMap, json['accountType']),
      json['parentAccount'] as String,
      (json['balance'] as num).toDouble(),
      json['createdBy'] as int,
      DateTime.parse(json['createdDate'] as String),
      json['isActive'] as bool,
    );

Map<String, dynamic> _$$CoaImplToJson(_$CoaImpl instance) => <String, dynamic>{
      'coaId': instance.coaId,
      'accountName': instance.accountName,
      'accountCode': instance.accountCode,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
      'parentAccount': instance.parentAccount,
      'balance': instance.balance,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
      'isActive': instance.isActive,
    };

const _$AccountTypeEnumMap = {
  AccountType.assets: 'assets',
  AccountType.liability: 'liability',
  AccountType.equity: 'equity',
  AccountType.income: 'income',
  AccountType.expense: 'expense',
};
