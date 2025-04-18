import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'courses.freezed.dart';
part 'courses.g.dart';

@freezed
class CoursesResponse with _$CoursesResponse {
  const factory CoursesResponse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "author") dynamic author,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "path") List<PathCourse>? path,
    @JsonKey(name: "title") String? title,
  }) = _CoursesResponse;

  factory CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseFromJson(json);
}

@freezed
class PathCourse with _$PathCourse {
  const factory PathCourse({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "url") String? url,
  }) = _Path;

  factory PathCourse.fromJson(Map<String, dynamic> json) => _$PathCourseFromJson(json);
}
