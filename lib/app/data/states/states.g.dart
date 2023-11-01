// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatesImpl _$$StatesImplFromJson(Map<String, dynamic> json) => _$StatesImpl(
      json['stateId'] as int?,
      json['stateCode'] as String?,
      json['state'] as String?,
      json['createdBy'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['isActive'] as int?,
    );

Map<String, dynamic> _$$StatesImplToJson(_$StatesImpl instance) =>
    <String, dynamic>{
      'stateId': instance.stateId,
      'stateCode': instance.stateCode,
      'state': instance.state,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
    };
