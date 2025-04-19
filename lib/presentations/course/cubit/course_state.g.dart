// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseStateImpl _$$CourseStateImplFromJson(Map<String, dynamic> json) =>
    _$CourseStateImpl(
      courses: (json['courses'] as List<dynamic>?)
              ?.map((e) => CoursesResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      detailCourse: json['detailCourse'] == null
          ? null
          : DetailCourse.fromJson(json['detailCourse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseStateImplToJson(_$CourseStateImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
      'detailCourse': instance.detailCourse,
    };
