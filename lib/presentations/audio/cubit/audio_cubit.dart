import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test_clean_architecture/presentations/audio/cubit/audio_state.dart';
import 'package:test_clean_architecture/presentations/course/cubit/course_state.dart';

import '../../../lib.dart';

class AudioCubit extends HydratedCubit<AudioState> {
  AudioCubit(
    this._detailAudio,
  ) : super(AudioState()) {}

  final DetailAudioUsecase _detailAudio;

  @override
  AudioState? fromJson(Map<String, dynamic> json) {
    return AudioState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AudioState state) {
    return state.toJson();
  }

  detailAudio() async {
    final response = await _detailAudio(
      DetailAudioParam(
        id: '',
      ),
    );

    if (isClosed) return;

    response.fold(
      (failure) {
        AppDialog.error(failure.message);
        emit(state.copyWith(detailAudio: null));
      },
      (detailAudio) async {
        print("Data Detail Course: ${detailAudio}");
        emit(state.copyWith(detailAudio: detailAudio));
      },
    );
  }
}
