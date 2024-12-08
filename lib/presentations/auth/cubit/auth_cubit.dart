import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../lib.dart';

export 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit(
    this._loginUseCase,
    // this._getProfileUsecase,
    // this._registerUsecase,
    // // this._getOtpUseCase,
    // // this._updatePersonalDataUseCase,
    // this._changePasswordUseCase,
    // this._forgotPasswordUsecase
  ) : super(AuthState()) {
    // getProfile();
  }
  // final UpdatePersonalDataUseCase _updatePersonalDataUseCase;
  // final GetOtpUseCase _getOtpUseCase;
  final LoginUseCase _loginUseCase;
  // final GetProfileUsecase _getProfileUsecase;
  // final RegisterUsecase _registerUsecase;
  // final ChangePasswordUsecase _changePasswordUseCase;
  // final ForgotPasswordUsecase _forgotPasswordUsecase;

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }

  updateToken(String token) {
    // emit(state.copyWith(user: state.user?.copyWith(tokenId: token)));
  }

  logout() async {
    final confirm = await AppDialog.confirm(
      'Apakah anda yakin ingin keluar dari akun ini?',
    );
    if (confirm == true) {
      resetUser();
      Fluttertoast.cancel();
      Fluttertoast.showToast(msg: 'Berhasil keluar dari akun');
    }
  }

  // String? get userId {
  //   final localUserId = state.user?.userId;
  //   if (localUserId != null) {
  //     return localUserId;
  //   }

  //   return state.changePassword?.id;
  // }

  resetUser() {
    emit(state.copyWith(
      user: null,
    ));
  }

  login(String email, String password) async {
    AppDialog.loading(message: 'Logging in...');
    final result =
        await _loginUseCase(LoginParam(email: email, password: password));
    AppDialog.hideLoading();
    result.fold(
      (l) {
        AppDialog.error(l.message);
        emit(state.copyWith(user: null));
      },
      (r) => emit(state.copyWith(user: r)),
    );
    router.reevaluateGuards();
  }

  // register(RegisterParam params) async {
  //   final result = await _registerUsecase(params);
  //   result.fold(
  //     (l) {
  //       print('Register Error: ${l.message}');
  //       AppDialog.error(l.message);
  //     },
  //     (r) {
  //       Fluttertoast.cancel();
  //       Fluttertoast.showToast(msg: r);
  //       router.replace(const AuthRoute());
  //     },
  //   );
  // }

  // forgotPassword(ForgotPasswordParam params) async {
  //   final result = await _forgotPasswordUsecase(params);
  //   result.fold(
  //     (l) {
  //       print('Register Error: ${l.message}');
  //       AppDialog.error(l.message);
  //     },
  //     (r) {
  //       Fluttertoast.cancel();
  //       Fluttertoast.showToast(msg: r);
  //       router.replace(const AuthRoute());
  //     },
  //   );
  // }

  // changePassword(ChangePasswordParams params) async {
  //   AppDialog.loading(message: 'Mengubah kata sandi...');

  //   final result = await _changePasswordUseCase(params);

  //   AppDialog.hideLoading();

  //   result.fold(
  //     (failure) {
  //       print('Password Change Error: ${failure.message}');
  //       AppDialog.error(failure.message);
  //     },
  //     (successMessage) {
  //       Fluttertoast.cancel();
  //       Fluttertoast.showToast(msg: 'Kata sandi berhasil diubah');

  //       router.replace(const AuthRoute());
  //     },
  //   );
  // }

  // getProfile() async {
  //   if (state.user == null) return;
  //   final response =
  //       await _getProfileUsecase(GetProfileParams(state.user!.userId));
  //   response.fold(
  //     (failure) {
  //       Fluttertoast.cancel();
  //       Fluttertoast.showToast(msg: failure.message);
  //     },
  //     (res) => emit(state.copyWith(profile: res)),
  //   );
  // }

  // toggleSellerMode() {
  //   emit(state.copyWith(isSellerMode: !state.isSellerMode));
  //   Fluttertoast.cancel();
  //   Fluttertoast.showToast(
  //       msg: state.isSellerMode
  //           ? 'Anda sekarang berada di mode penjual'
  //           : 'Anda sekarang berada di mode pembeli',
  //       gravity: ToastGravity.SNACKBAR);
  // }

  // Future<void> updatePersonalData(
  //     String userId, MyProfile updatedProfile) async {
  //   final result = await _updatePersonalDataUseCase(
  //     UpdatePersonalDataParams(userId: userId, personalData: updatedProfile),
  //   );

  //   result.fold(
  //     (failure) {
  //       Fluttertoast.showToast(msg: failure.message);
  //       print('Failure: ${failure.message}');
  //     },
  //     (updatedPersonalData) {
  //       emit(state.copyWith(profile: updatedPersonalData));
  //       Fluttertoast.showToast(msg: 'Data user profile berhasil diupdate');
  //       router.back();
  //     },
  //   );
  // }

  // getEmailOtp(String email) async {
  //   final result = await _getOtpUseCase(
  //     GetOtpParams(
  //       state.user?.userId ?? '',
  //       'MAIL',
  //       email,
  //     ),
  //   );

  //   result.fold(
  //     (failure) {
  //       Fluttertoast.showToast(msg: failure.message);
  //       emit(state.copyWith(emailList: [])); // Reset on failure
  //     },
  //     (otpList) {
  //       emit(state.copyWith(emailList: otpList)); // Update with new OTPs
  //     },
  //   );
  // }

  // getPhoneOtp(String phone) async {
  //   final result = await _getOtpUseCase(
  //     GetOtpParams(
  //       state.user?.userId ?? '',
  //       'PHONE',
  //       phone,
  //     ),
  //   );

  //   result.fold(
  //     (failure) {
  //       Fluttertoast.showToast(msg: failure.message);
  //       emit(state.copyWith(phoneList: []));
  //     },
  //     (otpList) {
  //       final phoneOtpList =
  //           otpList.where((otp) => otp.method == 'PHONE').toList();
  //       emit(state.copyWith(phoneList: phoneOtpList));
  //     },
  //   );
  // }
}
