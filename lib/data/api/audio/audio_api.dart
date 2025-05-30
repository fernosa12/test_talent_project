import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AudioApi {
  Future<ApiResponse<DetailAudio>> getDetailAudio(String? id);
}

class AudioApiImpl implements AudioApi {
  final Dio dio;

  AudioApiImpl(this.dio);
  @override
  Future<ApiResponse<DetailAudio>> getDetailAudio(String? id) async {
    final response = await dio.get(
      'https://api.kontenbase.com/query/api/v1/2810aabc-9dc5-4d37-8ff1-fd579e9d6f0c/audio/:id?$id=*',
    );
    return ApiResponse.fromResponse(response, (json) {
      return DetailAudio.fromJson(json);
    });
  }
}
