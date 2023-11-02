import 'package:freezed_annotation/freezed_annotation.dart';

part 'trans_header.freezed.dart';
part 'trans_header.g.dart';

@freezed
class TransHeader with _$TransHeader {
  const factory TransHeader(
    int? transEntry,
    String? docType,
    String? docNo,
    int? contactId,
    String? contactName,
    int? shipId,
    int? billId,
    String? status,
    String? reference,
    DateTime? orderDate,
    DateTime? shipDate,
    DateTime? refDate,
    String? payTerms,
    String? comments,
    String? adjustment,
    int? discount,
    double? adjustValue,
    String? tdsType,
    double? tdsValue,
    double? subTotal,
    double? total,
    int? createdBy,
    DateTime? createdDate,
  ) = _TransHeader;
  factory TransHeader.fromJson(Map<String, Object?> json) =>
      _$TransHeaderFromJson(json);
}
