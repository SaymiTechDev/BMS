import 'package:freezed_annotation/freezed_annotation.dart';

part 'trans_detail.freezed.dart';
part 'trans_detail.g.dart';

@freezed
class TransDetail with _$TransDetail {
  const factory TransDetail(
    int? transDetailEntry,
    int? transEntry,
    int? lineId,
    int? productId,
    String? sku,
    String? productName,
    double? quantity,
    double? rate,
    String? taxCode,
    double? amount,
    String? warehouseCode,
    String? lineStatus,
    String? baseType,
    int? baseEntry,
    int? baseLine,
    int? createdBy,
    DateTime? createdDate,
    String? company,
    String? companyName,
  ) = _TransDetail;
  factory TransDetail.fromJson(Map<String, Object?> json) =>
      _$TransDetailFromJson(json);
}
