// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coa _$CoaFromJson(Map<String, dynamic> json) {
  return _Coa.fromJson(json);
}

/// @nodoc
mixin _$Coa {
  int get coaId => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get accountCode => throw _privateConstructorUsedError;
  AccountType get accountType => throw _privateConstructorUsedError;
  String get parentAccount => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoaCopyWith<Coa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoaCopyWith<$Res> {
  factory $CoaCopyWith(Coa value, $Res Function(Coa) then) =
      _$CoaCopyWithImpl<$Res, Coa>;
  @useResult
  $Res call(
      {int coaId,
      String accountName,
      String accountCode,
      AccountType accountType,
      String parentAccount,
      double balance,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class _$CoaCopyWithImpl<$Res, $Val extends Coa> implements $CoaCopyWith<$Res> {
  _$CoaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coaId = null,
    Object? accountName = null,
    Object? accountCode = null,
    Object? accountType = null,
    Object? parentAccount = null,
    Object? balance = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      coaId: null == coaId
          ? _value.coaId
          : coaId // ignore: cast_nullable_to_non_nullable
              as int,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountCode: null == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      parentAccount: null == parentAccount
          ? _value.parentAccount
          : parentAccount // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$CoaImplCopyWith<$Res> implements $CoaCopyWith<$Res> {
  factory _$$CoaImplCopyWith(_$CoaImpl value, $Res Function(_$CoaImpl) then) =
      __$$CoaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int coaId,
      String accountName,
      String accountCode,
      AccountType accountType,
      String parentAccount,
      double balance,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class __$$CoaImplCopyWithImpl<$Res> extends _$CoaCopyWithImpl<$Res, _$CoaImpl>
    implements _$$CoaImplCopyWith<$Res> {
  __$$CoaImplCopyWithImpl(_$CoaImpl _value, $Res Function(_$CoaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coaId = null,
    Object? accountName = null,
    Object? accountCode = null,
    Object? accountType = null,
    Object? parentAccount = null,
    Object? balance = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_$CoaImpl(
      null == coaId
          ? _value.coaId
          : coaId // ignore: cast_nullable_to_non_nullable
              as int,
      null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      null == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      null == parentAccount
          ? _value.parentAccount
          : parentAccount // ignore: cast_nullable_to_non_nullable
              as String,
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$CoaImpl implements _Coa {
  const _$CoaImpl(
      this.coaId,
      this.accountName,
      this.accountCode,
      this.accountType,
      this.parentAccount,
      this.balance,
      this.createdBy,
      this.createdDate,
      this.isActive);

  factory _$CoaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoaImplFromJson(json);

  @override
  final int coaId;
  @override
  final String accountName;
  @override
  final String accountCode;
  @override
  final AccountType accountType;
  @override
  final String parentAccount;
  @override
  final double balance;
  @override
  final int createdBy;
  @override
  final DateTime createdDate;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'Coa(coaId: $coaId, accountName: $accountName, accountCode: $accountCode, accountType: $accountType, parentAccount: $parentAccount, balance: $balance, createdBy: $createdBy, createdDate: $createdDate, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoaImpl &&
            (identical(other.coaId, coaId) || other.coaId == coaId) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.parentAccount, parentAccount) ||
                other.parentAccount == parentAccount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coaId, accountName, accountCode,
      accountType, parentAccount, balance, createdBy, createdDate, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoaImplCopyWith<_$CoaImpl> get copyWith =>
      __$$CoaImplCopyWithImpl<_$CoaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoaImplToJson(
      this,
    );
  }
}

abstract class _Coa implements Coa {
  const factory _Coa(
      final int coaId,
      final String accountName,
      final String accountCode,
      final AccountType accountType,
      final String parentAccount,
      final double balance,
      final int createdBy,
      final DateTime createdDate,
      final bool isActive) = _$CoaImpl;

  factory _Coa.fromJson(Map<String, dynamic> json) = _$CoaImpl.fromJson;

  @override
  int get coaId;
  @override
  String get accountName;
  @override
  String get accountCode;
  @override
  AccountType get accountType;
  @override
  String get parentAccount;
  @override
  double get balance;
  @override
  int get createdBy;
  @override
  DateTime get createdDate;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$CoaImplCopyWith<_$CoaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
