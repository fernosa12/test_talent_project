// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioStateImpl _$$AudioStateImplFromJson(Map<String, dynamic> json) =>
    _$AudioStateImpl(
      detailAudio: json['detailAudio'] == null
          ? null
          : DetailAudio.fromJson(json['detailAudio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AudioStateImplToJson(_$AudioStateImpl instance) =>
    <String, dynamic>{
      'detailAudio': instance.detailAudio,
    };
