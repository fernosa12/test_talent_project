import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class AudioRepository {
  Future<Either<Failure, DetailAudio>> getDetailAudio(String? id);
}
