// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      json['productId'] as int?,
      json['productName'] as String?,
      json['sku'] as String?,
      json['productType'] as String?,
      json['productGroup'] as String?,
      json['uom'] as String?,
      json['spu'] as int?,
      json['hsnCode'] as String?,
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['isActive'] as int?,
      json['isStock'] as int?,
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'sku': instance.sku,
      'productType': instance.productType,
      'productGroup': instance.productGroup,
      'uom': instance.uom,
      'spu': instance.spu,
      'hsnCode': instance.hsnCode,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
      'isStock': instance.isStock,
    };
