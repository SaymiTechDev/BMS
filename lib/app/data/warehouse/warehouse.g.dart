// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      json['warehouseId'] as int,
      json['warehouseCode'] as String,
      json['warehouse'] as String,
      json['location'] as String,
      json['createdBy'] as int,
      DateTime.parse(json['createdDate'] as String),
      json['isActive'] as bool,
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'warehouseId': instance.warehouseId,
      'warehouseCode': instance.warehouseCode,
      'warehouse': instance.warehouse,
      'location': instance.location,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
      'isActive': instance.isActive,
    };
