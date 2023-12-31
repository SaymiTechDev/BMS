import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class Products with _$Products {
  const factory Products(
    int? productId,
    String? productName,
    String? sku,
    String? productType,
    String? productGroup,
    String? uom,
    int? spu,
    String? hsnCode,
    int? createdBy,
    DateTime? createdDate,
    int? isActive,
    int? isStock,
    String? company,
    String? companyName,
  ) = _Products;

  factory Products.fromJson(Map<String, Object?> json) =>
      _$ProductsFromJson(json);
}
