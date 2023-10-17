import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries.freezed.dart';
part 'countries.g.dart';

@freezed
class Countries with _$Countries {
  const factory Countries(
    int countryId,
    String countryCode,
    String country,
    int createdBy,
    DateTime createdDate,
    bool isActive,
  ) = _Countries;

  factory Countries.fromJson(Map<String, Object?> json) =>
      _$CountriesFromJson(json);
}
