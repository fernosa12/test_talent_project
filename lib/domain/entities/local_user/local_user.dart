// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

@freezed
class LocalUser with _$LocalUser {
  const factory LocalUser({
    @JsonKey(name: "expiresOn") DateTime? expiresOn,
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "userId") String? userId,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "firstName") String? firstName,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "phoneNumber") dynamic phoneNumber,
    @JsonKey(name: "role") List<String>? role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
