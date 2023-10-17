import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address(
    int addressId,
    AddressType addressType,
    String addressName,
    String doorNo,
    String building,
    String street,
    String city,
    String state,
    String pinCode,
    int contactId,
    int createdBy,
    DateTime createdDate,
    bool isActive,
  ) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}

enum AddressType { ship, bill, general }
