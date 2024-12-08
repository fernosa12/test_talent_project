import 'package:dartz/dartz.dart';
import '../../../core/errors/errors.dart';

import '../../entities/local_user/local_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, LocalUser>> login(String email, String password);
  // Future<Either<Failure, String>> changePassword(String userId, String password,
  //     String newPassword, String confirmPassword);
  // Future<Either<Failure, String>> register(String username, String email,
  //     String phone, String password, String name);
  // Future<Either<Failure, String>> forgotPassword(
  //   String email,
  // );
  // Future<Either<Failure, List<GetOtp>>> getOtp(
  //   String userId,
  //   String method,
  //   String newMailOrPhone,
  // );
}
