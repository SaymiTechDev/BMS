// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesImpl _$$CountriesImplFromJson(Map<String, dynamic> json) =>
    _$CountriesImpl(
      json['countryId'] as int,
      json['countryCode'] as String,
      json['country'] as String,
      json['createdBy'] as int,
      DateTime.parse(json['createdDate'] as String),
      json['isActive'] as bool,
    );

Map<String, dynamic> _$$CountriesImplToJson(_$CountriesImpl instance) =>
    <String, dynamic>{
      'countryId': instance.countryId,
      'countryCode': instance.countryCode,
      'country': instance.country,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
      'isActive': instance.isActive,
    };
