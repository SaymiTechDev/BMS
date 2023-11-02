// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransDetailImpl _$$TransDetailImplFromJson(Map<String, dynamic> json) =>
    _$TransDetailImpl(
      json['transDetailEntry'] as int?,
      json['transEntry'] as int?,
      json['lineId'] as int?,
      json['productId'] as int?,
      json['sku'] as String?,
      json['productName'] as String?,
      (json['quantity'] as num?)?.toDouble(),
      (json['rate'] as num?)?.toDouble(),
      json['taxCode'] as String?,
      (json['amount'] as num?)?.toDouble(),
      json['warehouseCode'] as String?,
      json['lineStatus'] as String?,
      json['baseType'] as String?,
      json['baseEntry'] as int?,
      json['baseLine'] as int?,
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$TransDetailImplToJson(_$TransDetailImpl instance) =>
    <String, dynamic>{
      'transDetailEntry': instance.transDetailEntry,
      'transEntry': instance.transEntry,
      'lineId': instance.lineId,
      'productId': instance.productId,
      'sku': instance.sku,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'rate': instance.rate,
      'taxCode': instance.taxCode,
      'amount': instance.amount,
      'warehouseCode': instance.warehouseCode,
      'lineStatus': instance.lineStatus,
      'baseType': instance.baseType,
      'baseEntry': instance.baseEntry,
      'baseLine': instance.baseLine,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
