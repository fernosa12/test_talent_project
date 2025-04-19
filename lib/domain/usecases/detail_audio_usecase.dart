import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_clean_architecture/lib.dart';

class DetailAudioUsecase implements UseCase<DetailAudio, DetailAudioParam> {
  final AudioRepository repository;

  DetailAudioUsecase(this.repository);

  @override
  Future<Either<Failure, DetailAudio>> call(DetailAudioParam params) async {
    return await repository.getDetailAudio(params.id);
  }
}

// ignore: must_be_immutable
class DetailAudioParam extends Equatable {
  String? id;

  DetailAudioParam({
    this.id = '',
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
