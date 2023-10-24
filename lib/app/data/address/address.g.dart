// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      json['addressId'] as int,
      json['addressType'] as String,
      json['addressName'] as String,
      json['doorNo'] as String,
      json['building'] as String,
      json['street'] as String,
      json['city'] as String,
      json['state'] as String,
      json['pinCode'] as String,
      json['contactId'] as int,
      json['createdBy'] as int,
      DateTime.parse(json['createdDate'] as String),
      json['isActive'] as bool,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'addressType': instance.addressType,
      'addressName': instance.addressName,
      'doorNo': instance.doorNo,
      'building': instance.building,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'pinCode': instance.pinCode,
      'contactId': instance.contactId,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
      'isActive': instance.isActive,
    };
