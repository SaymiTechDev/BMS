// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fYear.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FYear _$FYearFromJson(Map<String, dynamic> json) {
  return _FYear.fromJson(json);
}

/// @nodoc
mixin _$FYear {
  int? get fYearId => throw _privateConstructorUsedError;
  String? get fYear => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  int? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FYearCopyWith<FYear> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FYearCopyWith<$Res> {
  factory $FYearCopyWith(FYear value, $Res Function(FYear) then) =
      _$FYearCopyWithImpl<$Res, FYear>;
  @useResult
  $Res call(
      {int? fYearId,
      String? fYear,
      DateTime? startDate,
      DateTime? endDate,
      int? createdBy,
      DateTime? createdDate,
      int? isActive});
}

/// @nodoc
class _$FYearCopyWithImpl<$Res, $Val extends FYear>
    implements $FYearCopyWith<$Res> {
  _$FYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fYearId = freezed,
    Object? fYear = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      fYearId: freezed == fYearId
          ? _value.fYearId
          : fYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      fYear: freezed == fYear
          ? _value.fYear
          : fYear // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$FYearImplCopyWith<$Res> implements $FYearCopyWith<$Res> {
  factory _$$FYearImplCopyWith(
          _$FYearImpl value, $Res Function(_$FYearImpl) then) =
      __$$FYearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? fYearId,
      String? fYear,
      DateTime? startDate,
      DateTime? endDate,
      int? createdBy,
      DateTime? createdDate,
      int? isActive});
}

/// @nodoc
class __$$FYearImplCopyWithImpl<$Res>
    extends _$FYearCopyWithImpl<$Res, _$FYearImpl>
    implements _$$FYearImplCopyWith<$Res> {
  __$$FYearImplCopyWithImpl(
      _$FYearImpl _value, $Res Function(_$FYearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fYearId = freezed,
    Object? fYear = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$FYearImpl(
      freezed == fYearId
          ? _value.fYearId
          : fYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == fYear
          ? _value.fYear
          : fYear // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$FYearImpl implements _FYear {
  const _$FYearImpl(this.fYearId, this.fYear, this.startDate, this.endDate,
      this.createdBy, this.createdDate, this.isActive);

  factory _$FYearImpl.fromJson(Map<String, dynamic> json) =>
      _$$FYearImplFromJson(json);

  @override
  final int? fYearId;
  @override
  final String? fYear;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final int? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final int? isActive;

  @override
  String toString() {
    return 'FYear(fYearId: $fYearId, fYear: $fYear, startDate: $startDate, endDate: $endDate, createdBy: $createdBy, createdDate: $createdDate, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FYearImpl &&
            (identical(other.fYearId, fYearId) || other.fYearId == fYearId) &&
            (identical(other.fYear, fYear) || other.fYear == fYear) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fYearId, fYear, startDate,
      endDate, createdBy, createdDate, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FYearImplCopyWith<_$FYearImpl> get copyWith =>
      __$$FYearImplCopyWithImpl<_$FYearImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FYearImplToJson(
      this,
    );
  }
}

abstract class _FYear implements FYear {
  const factory _FYear(
      final int? fYearId,
      final String? fYear,
      final DateTime? startDate,
      final DateTime? endDate,
      final int? createdBy,
      final DateTime? createdDate,
      final int? isActive) = _$FYearImpl;

  factory _FYear.fromJson(Map<String, dynamic> json) = _$FYearImpl.fromJson;

  @override
  int? get fYearId;
  @override
  String? get fYear;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  int? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  int? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$FYearImplCopyWith<_$FYearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
