// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Countries _$CountriesFromJson(Map<String, dynamic> json) {
  return _Countries.fromJson(json);
}

/// @nodoc
mixin _$Countries {
  int get countryId => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesCopyWith<Countries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCopyWith<$Res> {
  factory $CountriesCopyWith(Countries value, $Res Function(Countries) then) =
      _$CountriesCopyWithImpl<$Res, Countries>;
  @useResult
  $Res call(
      {int countryId,
      String countryCode,
      String country,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class _$CountriesCopyWithImpl<$Res, $Val extends Countries>
    implements $CountriesCopyWith<$Res> {
  _$CountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? countryCode = null,
    Object? country = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesImplCopyWith<$Res>
    implements $CountriesCopyWith<$Res> {
  factory _$$CountriesImplCopyWith(
          _$CountriesImpl value, $Res Function(_$CountriesImpl) then) =
      __$$CountriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int countryId,
      String countryCode,
      String country,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class __$$CountriesImplCopyWithImpl<$Res>
    extends _$CountriesCopyWithImpl<$Res, _$CountriesImpl>
    implements _$$CountriesImplCopyWith<$Res> {
  __$$CountriesImplCopyWithImpl(
      _$CountriesImpl _value, $Res Function(_$CountriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? countryCode = null,
    Object? country = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_$CountriesImpl(
      null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesImpl implements _Countries {
  const _$CountriesImpl(this.countryId, this.countryCode, this.country,
      this.createdBy, this.createdDate, this.isActive);

  factory _$CountriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesImplFromJson(json);

  @override
  final int countryId;
  @override
  final String countryCode;
  @override
  final String country;
  @override
  final int createdBy;
  @override
  final DateTime createdDate;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'Countries(countryId: $countryId, countryCode: $countryCode, country: $country, createdBy: $createdBy, createdDate: $createdDate, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesImpl &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryId, countryCode, country,
      createdBy, createdDate, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesImplCopyWith<_$CountriesImpl> get copyWith =>
      __$$CountriesImplCopyWithImpl<_$CountriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesImplToJson(
      this,
    );
  }
}

abstract class _Countries implements Countries {
  const factory _Countries(
      final int countryId,
      final String countryCode,
      final String country,
      final int createdBy,
      final DateTime createdDate,
      final bool isActive) = _$CountriesImpl;

  factory _Countries.fromJson(Map<String, dynamic> json) =
      _$CountriesImpl.fromJson;

  @override
  int get countryId;
  @override
  String get countryCode;
  @override
  String get country;
  @override
  int get createdBy;
  @override
  DateTime get createdDate;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$CountriesImplCopyWith<_$CountriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
