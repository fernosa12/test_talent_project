import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../lib.dart';

part 'course_state.freezed.dart';
part 'course_state.g.dart';

@freezed
class CourseState with _$CourseState {
  const CourseState._();

  factory CourseState({
    @Default([]) List<CoursesResponse> courses,
    DetailCourse? detailCourse,
  }) = _CourseState;

  factory CourseState.fromJson(Map<String, dynamic> json) =>
      _$CourseStateFromJson(json);
}
