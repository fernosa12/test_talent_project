import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_clean_architecture/lib.dart';

class DetailCourseUsecase implements UseCase<DetailCourse, DetailCourseParam> {
  final CourseRepository repository;

  DetailCourseUsecase(this.repository);

  @override
  Future<Either<Failure, DetailCourse>> call(DetailCourseParam params) async {
    return await repository.getDetailCourse(params.id);
  }
}

// ignore: must_be_immutable
class DetailCourseParam extends Equatable {
   String? id;

   DetailCourseParam({
     this.id = '',
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
