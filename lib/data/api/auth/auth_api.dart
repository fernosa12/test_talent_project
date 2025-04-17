import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AuthApi {
  Future<ApiResponse<LocalUser>> login(String email, String password);
}

class AuthApiImpl implements AuthApi {
  final Dio dio;

  AuthApiImpl(this.dio);

  @override
  Future<ApiResponse<LocalUser>> login(String email, String password) async {
    final response = await dio.post(
      'api/v1/2810aabc-9dc5-4d37-8ff1-fd579e9d6f0c/auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return ApiResponse.fromResponse(response, (json) {
      return LocalUser.fromJson(json['user']);
    });
  }
}
