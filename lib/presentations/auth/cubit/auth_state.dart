import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/local_user/local_user.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  factory AuthState({
    LocalUser? user,
    // MyProfile? profile,
    // List<GetOtp>? emailList,
    // List<GetOtp>? phoneList,
    // ChangePassword? changePassword,
    @Default(false) bool isSellerMode,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  bool get isAuthenticated => user != null;
}
