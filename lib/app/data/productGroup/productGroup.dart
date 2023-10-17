import 'package:freezed_annotation/freezed_annotation.dart';

part 'productGroup.freezed.dart';
part 'productGroup.g.dart';

@freezed
class ProductGroup with _$ProductGroup {
  const factory ProductGroup(
    int productGroupId,
    String groupName,
    String purchaseAccount,
    String salesAccount,
    int createdBy,
    DateTime createdDate,
    bool isActive,
  ) = _ProductGroup;

  factory ProductGroup.fromJson(Map<String, Object?> json) =>
      _$ProductGroupFromJson(json);
}
