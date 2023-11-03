// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransHeaderImpl _$$TransHeaderImplFromJson(Map<String, dynamic> json) =>
    _$TransHeaderImpl(
      json['transEntry'] as int?,
      json['docType'] as String?,
      json['docNo'] as String?,
      json['contactId'] as int?,
      json['contactName'] as String?,
      json['shipId'] as int?,
      json['billId'] as int?,
      json['status'] as String?,
      json['reference'] as String?,
      json['orderDate'] == null
          ? null
          : DateTime.parse(json['orderDate'] as String),
      json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      json['refDate'] == null
          ? null
          : DateTime.parse(json['refDate'] as String),
      json['payTerms'] as String?,
      json['comments'] as String?,
      json['adjustment'] as String?,
      json['discount'] as int?,
      (json['adjustValue'] as num?)?.toDouble(),
      json['tdsType'] as String?,
      (json['tdsValue'] as num?)?.toDouble(),
      (json['subTotal'] as num?)?.toDouble(),
      (json['total'] as num?)?.toDouble(),
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['company'] as String?,
      json['companyName'] as String?,
    );

Map<String, dynamic> _$$TransHeaderImplToJson(_$TransHeaderImpl instance) =>
    <String, dynamic>{
      'transEntry': instance.transEntry,
      'docType': instance.docType,
      'docNo': instance.docNo,
      'contactId': instance.contactId,
      'contactName': instance.contactName,
      'shipId': instance.shipId,
      'billId': instance.billId,
      'status': instance.status,
      'reference': instance.reference,
      'orderDate': instance.orderDate?.toIso8601String(),
      'shipDate': instance.shipDate?.toIso8601String(),
      'refDate': instance.refDate?.toIso8601String(),
      'payTerms': instance.payTerms,
      'comments': instance.comments,
      'adjustment': instance.adjustment,
      'discount': instance.discount,
      'adjustValue': instance.adjustValue,
      'tdsType': instance.tdsType,
      'tdsValue': instance.tdsValue,
      'subTotal': instance.subTotal,
      'total': instance.total,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'company': instance.company,
      'companyName': instance.companyName,
    };
