// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

States _$StatesFromJson(Map<String, dynamic> json) {
  return _States.fromJson(json);
}

/// @nodoc
mixin _$States {
  int get stateId => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatesCopyWith<States> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatesCopyWith<$Res> {
  factory $StatesCopyWith(States value, $Res Function(States) then) =
      _$StatesCopyWithImpl<$Res, States>;
  @useResult
  $Res call(
      {int stateId,
      String stateCode,
      String state,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class _$StatesCopyWithImpl<$Res, $Val extends States>
    implements $StatesCopyWith<$Res> {
  _$StatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? stateCode = null,
    Object? state = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
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
abstract class _$$StatesImplCopyWith<$Res> implements $StatesCopyWith<$Res> {
  factory _$$StatesImplCopyWith(
          _$StatesImpl value, $Res Function(_$StatesImpl) then) =
      __$$StatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int stateId,
      String stateCode,
      String state,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class __$$StatesImplCopyWithImpl<$Res>
    extends _$StatesCopyWithImpl<$Res, _$StatesImpl>
    implements _$$StatesImplCopyWith<$Res> {
  __$$StatesImplCopyWithImpl(
      _$StatesImpl _value, $Res Function(_$StatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? stateCode = null,
    Object? state = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_$StatesImpl(
      null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int,
      null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
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
class _$StatesImpl implements _States {
  const _$StatesImpl(this.stateId, this.stateCode, this.state, this.createdBy,
      this.createdDate, this.isActive);

  factory _$StatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatesImplFromJson(json);

  @override
  final int stateId;
  @override
  final String stateCode;
  @override
  final String state;
  @override
  final int createdBy;
  @override
  final DateTime createdDate;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'States(stateId: $stateId, stateCode: $stateCode, state: $state, createdBy: $createdBy, createdDate: $createdDate, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatesImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, stateId, stateCode, state, createdBy, createdDate, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatesImplCopyWith<_$StatesImpl> get copyWith =>
      __$$StatesImplCopyWithImpl<_$StatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatesImplToJson(
      this,
    );
  }
}

abstract class _States implements States {
  const factory _States(
      final int stateId,
      final String stateCode,
      final String state,
      final int createdBy,
      final DateTime createdDate,
      final bool isActive) = _$StatesImpl;

  factory _States.fromJson(Map<String, dynamic> json) = _$StatesImpl.fromJson;

  @override
  int get stateId;
  @override
  String get stateCode;
  @override
  String get state;
  @override
  int get createdBy;
  @override
  DateTime get createdDate;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$StatesImplCopyWith<_$StatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
