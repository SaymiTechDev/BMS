import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse(
    int? warehouseId,
    String? warehouseCode,
    String? warehouse,
    String? location,
    int? createdBy,
    DateTime? createdDate,
    int? isActive,
    String? company,
    String? companyName,
  ) = _Warehouse;

  factory Warehouse.fromJson(Map<String, Object?> json) =>
      _$WarehouseFromJson(json);
}
