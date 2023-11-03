import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Users with _$Users {
  const factory Users(
    int? userId,
    String? userName,
    String? password,
    String? company,
    int? createdBy,
    DateTime? createdDate,
    DateTime? lastSignedIn,
    DateTime? lastSignedOut,
    int? isActive,
  ) = _Users;

  factory Users.fromJson(Map<String, Object?> json) => _$UsersFromJson(json);
}
