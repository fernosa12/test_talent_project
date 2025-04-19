import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../lib.dart';

part 'audio_state.freezed.dart';
part 'audio_state.g.dart';

@freezed
class AudioState with _$AudioState {
  const AudioState._();
  factory AudioState({
    DetailAudio? detailAudio,
  }) = _AudioState;

  factory AudioState.fromJson(Map<String, dynamic> json) =>
      _$AudioStateFromJson(json);
}
