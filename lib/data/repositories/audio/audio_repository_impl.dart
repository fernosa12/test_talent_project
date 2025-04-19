import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/data/api/courses/courses_api.dart';

import '../../../lib.dart';

class AudioRepositoryImpl implements AudioRepository {
  final AudioApi api;
  final NetworkInfo networkInfo;

  AudioRepositoryImpl(this.api, this.networkInfo);
  @override
  @override
  Future<Either<Failure, DetailAudio>> getDetailAudio(String? id) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getDetailAudio(id);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}

//// data source(api)  -> repository -> usecase -> cubit -> ui
