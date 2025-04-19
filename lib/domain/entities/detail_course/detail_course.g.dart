// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailCourseImpl _$$DetailCourseImplFromJson(Map<String, dynamic> json) =>
    _$DetailCourseImpl(
      id: json['_id'] as String?,
      author: json['author'],
      category: json['category'] as String?,
      chapter: (json['chapter'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      path: (json['path'] as List<dynamic>?)
          ?.map((e) => PathDetailCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$DetailCourseImplToJson(_$DetailCourseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'author': instance.author,
      'category': instance.category,
      'chapter': instance.chapter,
      'createdAt': instance.createdAt?.toIso8601String(),
      'path': instance.path,
      'title': instance.title,
    };

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };

_$PathDetailCourseImpl _$$PathDetailCourseImplFromJson(
        Map<String, dynamic> json) =>
    _$PathDetailCourseImpl(
      fileName: json['fileName'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PathDetailCourseImplToJson(
        _$PathDetailCourseImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'url': instance.url,
    };
