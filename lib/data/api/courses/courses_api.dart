import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class CoursesApi {
  Future<ApiResponse<List<CoursesResponse>>> getCourse( );
}

class CoursesApiImpl implements CoursesApi {
  final Dio dio;

  CoursesApiImpl(this.dio);

  @override
  Future<ApiResponse<List<CoursesResponse>>> getCourse( ) async {
    final response = await dio.get(
      'api/v1/2810aabc-9dc5-4d37-8ff1-fd579e9d6f0c/courses',
     
    );
    return ApiResponse.fromResponse(response, (json) {
      return List<CoursesResponse>.from(
        json.map((x) => CoursesResponse.fromJson(x)),
      );
    });
  }
}
