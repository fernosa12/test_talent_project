// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailAudioImpl _$$DetailAudioImplFromJson(Map<String, dynamic> json) =>
    _$DetailAudioImpl(
      id: json['_id'] as String?,
      artist: json['artist'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
      isPremium: json['isPremium'] as String?,
      languange: json['languange'] as String?,
      path: (json['path'] as List<dynamic>?)
          ?.map((e) => PathDetailAudio.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: (json['thumbnail'] as List<dynamic>?)
          ?.map((e) => ThumbnailDetailAudio.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: json['time'],
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$DetailAudioImplToJson(_$DetailAudioImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'artist': instance.artist,
      'createdAt': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'isPremium': instance.isPremium,
      'languange': instance.languange,
      'path': instance.path,
      'thumbnail': instance.thumbnail,
      'time': instance.time,
      'title': instance.title,
    };

_$PathDetailAudioImpl _$$PathDetailAudioImplFromJson(
        Map<String, dynamic> json) =>
    _$PathDetailAudioImpl(
      fileName: json['fileName'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PathDetailAudioImplToJson(
        _$PathDetailAudioImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'url': instance.url,
    };

_$ThumbnailDetailAudioImpl _$$ThumbnailDetailAudioImplFromJson(
        Map<String, dynamic> json) =>
    _$ThumbnailDetailAudioImpl(
      fileName: json['fileName'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ThumbnailDetailAudioImplToJson(
        _$ThumbnailDetailAudioImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'url': instance.url,
    };
