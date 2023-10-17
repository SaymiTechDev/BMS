// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  int get userId => throw _privateConstructorUsedError;
  String get uomName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  DateTime get lastSignedIn => throw _privateConstructorUsedError;
  DateTime get lastSignedOut => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call(
      {int userId,
      String uomName,
      String password,
      int createdBy,
      DateTime createdDate,
      DateTime lastSignedIn,
      DateTime lastSignedOut,
      bool isActive});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? uomName = null,
    Object? password = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? lastSignedIn = null,
    Object? lastSignedOut = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSignedIn: null == lastSignedIn
          ? _value.lastSignedIn
          : lastSignedIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSignedOut: null == lastSignedOut
          ? _value.lastSignedOut
          : lastSignedOut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersImplCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$UsersImplCopyWith(
          _$UsersImpl value, $Res Function(_$UsersImpl) then) =
      __$$UsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String uomName,
      String password,
      int createdBy,
      DateTime createdDate,
      DateTime lastSignedIn,
      DateTime lastSignedOut,
      bool isActive});
}

/// @nodoc
class __$$UsersImplCopyWithImpl<$Res>
    extends _$UsersCopyWithImpl<$Res, _$UsersImpl>
    implements _$$UsersImplCopyWith<$Res> {
  __$$UsersImplCopyWithImpl(
      _$UsersImpl _value, $Res Function(_$UsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? uomName = null,
    Object? password = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? lastSignedIn = null,
    Object? lastSignedOut = null,
    Object? isActive = null,
  }) {
    return _then(_$UsersImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == lastSignedIn
          ? _value.lastSignedIn
          : lastSignedIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == lastSignedOut
          ? _value.lastSignedOut
          : lastSignedOut // ignore: cast_nullable_to_non_nullable
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
class _$UsersImpl implements _Users {
  const _$UsersImpl(this.userId, this.uomName, this.password, this.createdBy,
      this.createdDate, this.lastSignedIn, this.lastSignedOut, this.isActive);

  factory _$UsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersImplFromJson(json);

  @override
  final int userId;
  @override
  final String uomName;
  @override
  final String password;
  @override
  final int createdBy;
  @override
  final DateTime createdDate;
  @override
  final DateTime lastSignedIn;
  @override
  final DateTime lastSignedOut;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'Users(userId: $userId, uomName: $uomName, password: $password, createdBy: $createdBy, createdDate: $createdDate, lastSignedIn: $lastSignedIn, lastSignedOut: $lastSignedOut, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastSignedIn, lastSignedIn) ||
                other.lastSignedIn == lastSignedIn) &&
            (identical(other.lastSignedOut, lastSignedOut) ||
                other.lastSignedOut == lastSignedOut) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, uomName, password,
      createdBy, createdDate, lastSignedIn, lastSignedOut, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      __$$UsersImplCopyWithImpl<_$UsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersImplToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users(
      final int userId,
      final String uomName,
      final String password,
      final int createdBy,
      final DateTime createdDate,
      final DateTime lastSignedIn,
      final DateTime lastSignedOut,
      final bool isActive) = _$UsersImpl;

  factory _Users.fromJson(Map<String, dynamic> json) = _$UsersImpl.fromJson;

  @override
  int get userId;
  @override
  String get uomName;
  @override
  String get password;
  @override
  int get createdBy;
  @override
  DateTime get createdDate;
  @override
  DateTime get lastSignedIn;
  @override
  DateTime get lastSignedOut;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
