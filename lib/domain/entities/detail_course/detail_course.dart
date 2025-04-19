import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_course.freezed.dart';
part 'detail_course.g.dart';

@freezed
class DetailCourse with _$DetailCourse {
  const factory DetailCourse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "author") dynamic author,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "chapter") List<Chapter>? chapter,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "path") List<PathDetailCourse>? path,
    @JsonKey(name: "title") String? title,
  }) = _DetailCourse;

  factory DetailCourse.fromJson(Map<String, dynamic> json) =>
      _$DetailCourseFromJson(json);
}

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "title") String? title,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
class PathDetailCourse with _$PathDetailCourse {
  const factory PathDetailCourse({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "url") String? url,
  }) = _PathDetailCourse;

  factory PathDetailCourse.fromJson(Map<String, dynamic> json) =>
      _$PathDetailCourseFromJson(json);
}
