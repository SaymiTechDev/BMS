// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productGroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductGroupImpl _$$ProductGroupImplFromJson(Map<String, dynamic> json) =>
    _$ProductGroupImpl(
      json['productGroupId'] as int?,
      json['groupName'] as String?,
      json['purchaseAccount'] as String?,
      json['salesAccount'] as String?,
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['isActive'] as int?,
    );

Map<String, dynamic> _$$ProductGroupImplToJson(_$ProductGroupImpl instance) =>
    <String, dynamic>{
      'productGroupId': instance.productGroupId,
      'groupName': instance.groupName,
      'purchaseAccount': instance.purchaseAccount,
      'salesAccount': instance.salesAccount,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
    };
