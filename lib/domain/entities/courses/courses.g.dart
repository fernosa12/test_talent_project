// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursesResponseImpl _$$CoursesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CoursesResponseImpl(
      id: json['_id'] as String?,
      author: json['author'],
      category: json['category'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      path: (json['path'] as List<dynamic>?)
          ?.map((e) => PathCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CoursesResponseImplToJson(
        _$CoursesResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'author': instance.author,
      'category': instance.category,
      'createdAt': instance.createdAt?.toIso8601String(),
      'path': instance.path,
      'title': instance.title,
    };

_$PathImpl _$$PathImplFromJson(Map<String, dynamic> json) => _$PathImpl(
      fileName: json['fileName'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PathImplToJson(_$PathImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'url': instance.url,
    };
