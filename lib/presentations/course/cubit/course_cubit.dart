import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test_clean_architecture/presentations/course/cubit/course_state.dart';

import '../../../lib.dart';

export 'course_state.dart';

class CourseCubit extends HydratedCubit<CourseState> {
  CourseCubit(
    this._courseUsecase,
    this._detailCourse,
  ) : super(CourseState()) {
    getCourse();
  }

  final GetCourseUsecase _courseUsecase;
  final DetailCourseUsecase _detailCourse;

  @override
  CourseState? fromJson(Map<String, dynamic> json) {
    return CourseState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(CourseState state) {
    return state.toJson();
  }

  getCourse() async {
    final result = await _courseUsecase(NoParams());

    result.fold(
      (failure) {
        emit(state.copyWith(courses: []));
      },
      (courses) {
        emit(state.copyWith(courses: courses));
      },
    );
  }

  detailCourse(
   
  ) async {
    final response = await _detailCourse(
      DetailCourseParam(
        id: '',
      ),
    );

    if (isClosed) return;

    response.fold(
      (failure) {
        AppDialog.error(failure.message);
        emit(state.copyWith(detailCourse: null));
      },
      (detailCourse) async {
        print("Data Detail Course: ${detailCourse}");
        emit(state.copyWith(detailCourse: detailCourse));
      },
    );
  }
}
