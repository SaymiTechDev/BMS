// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Warehouse _$WarehouseFromJson(Map<String, dynamic> json) {
  return _Warehouse.fromJson(json);
}

/// @nodoc
mixin _$Warehouse {
  int get warehouseId => throw _privateConstructorUsedError;
  String get warehouseCode => throw _privateConstructorUsedError;
  String get warehouse => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseCopyWith<Warehouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseCopyWith<$Res> {
  factory $WarehouseCopyWith(Warehouse value, $Res Function(Warehouse) then) =
      _$WarehouseCopyWithImpl<$Res, Warehouse>;
  @useResult
  $Res call(
      {int warehouseId,
      String warehouseCode,
      String warehouse,
      String location,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class _$WarehouseCopyWithImpl<$Res, $Val extends Warehouse>
    implements $WarehouseCopyWith<$Res> {
  _$WarehouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseId = null,
    Object? warehouseCode = null,
    Object? warehouse = null,
    Object? location = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseCode: null == warehouseCode
          ? _value.warehouseCode
          : warehouseCode // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WarehouseImplCopyWith<$Res>
    implements $WarehouseCopyWith<$Res> {
  factory _$$WarehouseImplCopyWith(
          _$WarehouseImpl value, $Res Function(_$WarehouseImpl) then) =
      __$$WarehouseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int warehouseId,
      String warehouseCode,
      String warehouse,
      String location,
      int createdBy,
      DateTime createdDate,
      bool isActive});
}

/// @nodoc
class __$$WarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseCopyWithImpl<$Res, _$WarehouseImpl>
    implements _$$WarehouseImplCopyWith<$Res> {
  __$$WarehouseImplCopyWithImpl(
      _$WarehouseImpl _value, $Res Function(_$WarehouseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseId = null,
    Object? warehouseCode = null,
    Object? warehouse = null,
    Object? location = null,
    Object? createdBy = null,
    Object? createdDate = null,
    Object? isActive = null,
  }) {
    return _then(_$WarehouseImpl(
      null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      null == warehouseCode
          ? _value.warehouseCode
          : warehouseCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as String,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
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
class _$WarehouseImpl implements _Warehouse {
  const _$WarehouseImpl(this.warehouseId, this.warehouseCode, this.warehouse,
      this.location, this.createdBy, this.createdDate, this.isActive);

  factory _$WarehouseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseImplFromJson(json);

  @override
  final int warehouseId;
  @override
  final String warehouseCode;
  @override
  final String warehouse;
  @override
  final String location;
  @override
  final int createdBy;
  @override
  final DateTime createdDate;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'Warehouse(warehouseId: $warehouseId, warehouseCode: $warehouseCode, warehouse: $warehouse, location: $location, createdBy: $createdBy, createdDate: $createdDate, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseImpl &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseCode, warehouseCode) ||
                other.warehouseCode == warehouseCode) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, warehouseId, warehouseCode,
      warehouse, location, createdBy, createdDate, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseImplCopyWith<_$WarehouseImpl> get copyWith =>
      __$$WarehouseImplCopyWithImpl<_$WarehouseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseImplToJson(
      this,
    );
  }
}

abstract class _Warehouse implements Warehouse {
  const factory _Warehouse(
      final int warehouseId,
      final String warehouseCode,
      final String warehouse,
      final String location,
      final int createdBy,
      final DateTime createdDate,
      final bool isActive) = _$WarehouseImpl;

  factory _Warehouse.fromJson(Map<String, dynamic> json) =
      _$WarehouseImpl.fromJson;

  @override
  int get warehouseId;
  @override
  String get warehouseCode;
  @override
  String get warehouse;
  @override
  String get location;
  @override
  int get createdBy;
  @override
  DateTime get createdDate;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$WarehouseImplCopyWith<_$WarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
