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
    );

Map<String, dynamic> _$$CourseStateImplToJson(_$CourseStateImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };
