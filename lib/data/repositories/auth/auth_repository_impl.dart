import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi api;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, LocalUser>> login(
      String email, String password) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.login(email, password);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  // @override
  // Future<Either<Failure, String>> changePassword(String userId, String password,
  //     String newPassword, String confirmPassword) async {
  //   final isConnected = await networkInfo.isConnected;
  //   if (!isConnected) {
  //     return Left(Failure.noConnection());
  //   }
  //   try {
  //     final response = await api.changePassword(
  //         userId, password, newPassword, confirmPassword);
  //     if (!response.success) {
  //       return Left(Failure.serverError(response.message));
  //     }
  //     return Right(response.data!);
  //   } catch (e) {
  //     return Left(Failure.parseFromException(e));
  //   }
  // }

  // @override
  // Future<Either<Failure, String>> forgotPassword(String email) async {
  //   final isConnected = await networkInfo.isConnected;
  //   if (!isConnected) {
  //     return Left(Failure.noConnection());
  //   }
  //   try {
  //     final message = await api.forgotPassword(email);
  //     return Right(message);
  //   } catch (e) {
  //     return Left(Failure.parseFromException(e));
  //   }
  // }

  // @override
  // Future<Either<Failure, String>> register(String username, String email,
  //     String phone, String password, String name) async {
  //   final isConnected = await networkInfo.isConnected;
  //   if (!isConnected) {
  //     return Left(Failure.noConnection());
  //   }
  //   try {
  //     final message =
  //         await api.register(username, email, phone, password, name);
  //     return Right(message);
  //   } catch (e) {
  //     return Left(Failure.parseFromException(e));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<GetOtp>>> getOtp(
  //     String userId, String method, String newMailOrPhone) async {
  //   if (!await networkInfo.isConnected) {
  //     return Left(Failure.noConnection());
  //   }
  //   try {
  //     final response = await api.getOtpData(userId, method, newMailOrPhone);
  //     if (!response.success) {
  //       return Left(Failure.serverError(response.message));
  //     }
  //     return Right(response.data!);
  //   } catch (e) {
  //     print('Exception caught in get otp : $e');
  //     return Left(Failure.parseFromException(e.toString()));
  //   }
  // }
}

//// data source(api)  -> repository -> usecase -> cubit -> ui