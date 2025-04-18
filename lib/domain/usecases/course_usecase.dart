import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/lib.dart';

class GetCourseUsecase implements UseCase<List<CoursesResponse>, NoParams> {
  final CourseRepository repository;

  GetCourseUsecase(this.repository);

  @override
  Future<Either<Failure, List<CoursesResponse>>> call(NoParams params) async {
    return await repository.getCourse();
  }
}
