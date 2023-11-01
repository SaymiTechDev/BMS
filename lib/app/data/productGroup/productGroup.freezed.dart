// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productGroup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductGroup _$ProductGroupFromJson(Map<String, dynamic> json) {
  return _ProductGroup.fromJson(json);
}

/// @nodoc
mixin _$ProductGroup {
  int? get productGroupId => throw _privateConstructorUsedError;
  String? get groupName => throw _privateConstructorUsedError;
  String? get purchaseAccount => throw _privateConstructorUsedError;
  String? get salesAccount => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  int? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductGroupCopyWith<ProductGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductGroupCopyWith<$Res> {
  factory $ProductGroupCopyWith(
          ProductGroup value, $Res Function(ProductGroup) then) =
      _$ProductGroupCopyWithImpl<$Res, ProductGroup>;
  @useResult
  $Res call(
      {int? productGroupId,
      String? groupName,
      String? purchaseAccount,
      String? salesAccount,
      int? createdBy,
      DateTime? createdDate,
      int? isActive});
}

/// @nodoc
class _$ProductGroupCopyWithImpl<$Res, $Val extends ProductGroup>
    implements $ProductGroupCopyWith<$Res> {
  _$ProductGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productGroupId = freezed,
    Object? groupName = freezed,
    Object? purchaseAccount = freezed,
    Object? salesAccount = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      productGroupId: freezed == productGroupId
          ? _value.productGroupId
          : productGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseAccount: freezed == purchaseAccount
          ? _value.purchaseAccount
          : purchaseAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      salesAccount: freezed == salesAccount
          ? _value.salesAccount
          : salesAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductGroupImplCopyWith<$Res>
    implements $ProductGroupCopyWith<$Res> {
  factory _$$ProductGroupImplCopyWith(
          _$ProductGroupImpl value, $Res Function(_$ProductGroupImpl) then) =
      __$$ProductGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productGroupId,
      String? groupName,
      String? purchaseAccount,
      String? salesAccount,
      int? createdBy,
      DateTime? createdDate,
      int? isActive});
}

/// @nodoc
class __$$ProductGroupImplCopyWithImpl<$Res>
    extends _$ProductGroupCopyWithImpl<$Res, _$ProductGroupImpl>
    implements _$$ProductGroupImplCopyWith<$Res> {
  __$$ProductGroupImplCopyWithImpl(
      _$ProductGroupImpl _value, $Res Function(_$ProductGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productGroupId = freezed,
    Object? groupName = freezed,
    Object? purchaseAccount = freezed,
    Object? salesAccount = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$ProductGroupImpl(
      freezed == productGroupId
          ? _value.productGroupId
          : productGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == purchaseAccount
          ? _value.purchaseAccount
          : purchaseAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salesAccount
          ? _value.salesAccount
          : salesAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductGroupImpl implements _ProductGroup {
  const _$ProductGroupImpl(
      this.productGroupId,
      this.groupName,
      this.purchaseAccount,
      this.salesAccount,
      this.createdBy,
      this.createdDate,
      this.isActive);

  factory _$ProductGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductGroupImplFromJson(json);

  @override
  final int? productGroupId;
  @override
  final String? groupName;
  @override
  final String? purchaseAccount;
  @override
  final String? salesAccount;
  @override
  final int? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final int? isActive;

  @override
  String toString() {
    return 'ProductGroup(productGroupId: $productGroupId, groupName: $groupName, purchaseAccount: $purchaseAccount, salesAccount: $salesAccount, createdBy: $createdBy, createdDate: $createdDate, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductGroupImpl &&
            (identical(other.productGroupId, productGroupId) ||
                other.productGroupId == productGroupId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.purchaseAccount, purchaseAccount) ||
                other.purchaseAccount == purchaseAccount) &&
            (identical(other.salesAccount, salesAccount) ||
                other.salesAccount == salesAccount) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productGroupId, groupName,
      purchaseAccount, salesAccount, createdBy, createdDate, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductGroupImplCopyWith<_$ProductGroupImpl> get copyWith =>
      __$$ProductGroupImplCopyWithImpl<_$ProductGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductGroupImplToJson(
      this,
    );
  }
}

abstract class _ProductGroup implements ProductGroup {
  const factory _ProductGroup(
      final int? productGroupId,
      final String? groupName,
      final String? purchaseAccount,
      final String? salesAccount,
      final int? createdBy,
      final DateTime? createdDate,
      final int? isActive) = _$ProductGroupImpl;

  factory _ProductGroup.fromJson(Map<String, dynamic> json) =
      _$ProductGroupImpl.fromJson;

  @override
  int? get productGroupId;
  @override
  String? get groupName;
  @override
  String? get purchaseAccount;
  @override
  String? get salesAccount;
  @override
  int? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  int? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$ProductGroupImplCopyWith<_$ProductGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
