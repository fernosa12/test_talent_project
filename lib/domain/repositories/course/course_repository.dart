import 'package:dartz/dartz.dart';


import '../../../lib.dart';

abstract class CourseRepository {
  Future<Either<Failure, List<CoursesResponse>>>getCourse();
}
