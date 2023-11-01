// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fYear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FYearImpl _$$FYearImplFromJson(Map<String, dynamic> json) => _$FYearImpl(
      json['fYearId'] as int?,
      json['fYear'] as String?,
      json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['isActive'] as int?,
    );

Map<String, dynamic> _$$FYearImplToJson(_$FYearImpl instance) =>
    <String, dynamic>{
      'fYearId': instance.fYearId,
      'fYear': instance.fYear,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
    };
