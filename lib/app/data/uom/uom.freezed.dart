// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Uom _$UomFromJson(Map<String, dynamic> json) {
  return _Uom.fromJson(json);
}

/// @nodoc
mixin _$Uom {
  int? get uomId => throw _privateConstructorUsedError;
  String? get uomCode => throw _privateConstructorUsedError;
  String? get uom => throw _privateConstructorUsedError;
  int? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UomCopyWith<Uom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UomCopyWith<$Res> {
  factory $UomCopyWith(Uom value, $Res Function(Uom) then) =
      _$UomCopyWithImpl<$Res, Uom>;
  @useResult
  $Res call({int? uomId, String? uomCode, String? uom, int? isActive});
}

/// @nodoc
class _$UomCopyWithImpl<$Res, $Val extends Uom> implements $UomCopyWith<$Res> {
  _$UomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uomId = freezed,
    Object? uomCode = freezed,
    Object? uom = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      uomId: freezed == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as int?,
      uomCode: freezed == uomCode
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UomImplCopyWith<$Res> implements $UomCopyWith<$Res> {
  factory _$$UomImplCopyWith(_$UomImpl value, $Res Function(_$UomImpl) then) =
      __$$UomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? uomId, String? uomCode, String? uom, int? isActive});
}

/// @nodoc
class __$$UomImplCopyWithImpl<$Res> extends _$UomCopyWithImpl<$Res, _$UomImpl>
    implements _$$UomImplCopyWith<$Res> {
  __$$UomImplCopyWithImpl(_$UomImpl _value, $Res Function(_$UomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uomId = freezed,
    Object? uomCode = freezed,
    Object? uom = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$UomImpl(
      freezed == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == uomCode
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UomImpl implements _Uom {
  const _$UomImpl(this.uomId, this.uomCode, this.uom, this.isActive);

  factory _$UomImpl.fromJson(Map<String, dynamic> json) =>
      _$$UomImplFromJson(json);

  @override
  final int? uomId;
  @override
  final String? uomCode;
  @override
  final String? uom;
  @override
  final int? isActive;

  @override
  String toString() {
    return 'Uom(uomId: $uomId, uomCode: $uomCode, uom: $uom, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UomImpl &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.uomCode, uomCode) || other.uomCode == uomCode) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uomId, uomCode, uom, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UomImplCopyWith<_$UomImpl> get copyWith =>
      __$$UomImplCopyWithImpl<_$UomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UomImplToJson(
      this,
    );
  }
}

abstract class _Uom implements Uom {
  const factory _Uom(final int? uomId, final String? uomCode, final String? uom,
      final int? isActive) = _$UomImpl;

  factory _Uom.fromJson(Map<String, dynamic> json) = _$UomImpl.fromJson;

  @override
  int? get uomId;
  @override
  String? get uomCode;
  @override
  String? get uom;
  @override
  int? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$UomImplCopyWith<_$UomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
