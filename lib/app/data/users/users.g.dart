// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      json['userId'] as int,
      json['uomName'] as String,
      json['password'] as String,
      json['createdBy'] as int,
      DateTime.parse(json['createdDate'] as String),
      DateTime.parse(json['lastSignedIn'] as String),
      DateTime.parse(json['lastSignedOut'] as String),
      json['isActive'] as bool,
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'uomName': instance.uomName,
      'password': instance.password,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastSignedIn': instance.lastSignedIn.toIso8601String(),
      'lastSignedOut': instance.lastSignedOut.toIso8601String(),
      'isActive': instance.isActive,
    };
