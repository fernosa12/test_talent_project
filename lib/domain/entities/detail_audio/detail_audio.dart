import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_audio.freezed.dart';
part 'detail_audio.g.dart';

@freezed
class DetailAudio with _$DetailAudio {
  const factory DetailAudio({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "artist") String? artist,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "isPremium") String? isPremium,
    @JsonKey(name: "languange") String? languange,
    @JsonKey(name: "path") List<PathDetailAudio>? path,
    @JsonKey(name: "thumbnail") List<ThumbnailDetailAudio>? thumbnail,
    @JsonKey(name: "time") dynamic time,
    @JsonKey(name: "title") String? title,
  }) = _DetailAudio;

  factory DetailAudio.fromJson(Map<String, dynamic> json) =>
      _$DetailAudioFromJson(json);
}

@freezed
class PathDetailAudio with _$PathDetailAudio {
  const factory PathDetailAudio({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "url") String? url,
  }) = _PathDetailAudio;

  factory PathDetailAudio.fromJson(Map<String, dynamic> json) => _$PathDetailAudioFromJson(json);
}
@freezed
class ThumbnailDetailAudio with _$ThumbnailDetailAudio {
  const factory ThumbnailDetailAudio({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "url") String? url,
  }) = _ThumbnailDetailAudio;

  factory ThumbnailDetailAudio.fromJson(Map<String, dynamic> json) => _$ThumbnailDetailAudioFromJson(json);
}
