import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:test_clean_architecture/presentations/audio/cubit/audio_cubit.dart';
import 'package:test_clean_architecture/presentations/audio/cubit/audio_state.dart';
import '../../../lib.dart';

@RoutePage()
class AudioDetailView extends StatefulWidget implements AutoRouteWrapper {
  const AudioDetailView({super.key});

  @override
  State<AudioDetailView> createState() => _AudioDetailViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AudioCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _AudioDetailViewState extends State<AudioDetailView> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration current = Duration.zero;
  Duration total = Duration(seconds: 1); 

  @override
  void initState() {
    super.initState();
    context.read<AudioCubit>().detailAudio();

    _audioPlayer.positionStream.listen((pos) {
      setState(() {
        current = pos;
      });
    });

    _audioPlayer.durationStream.listen((dur) {
      if (dur != null) {
        setState(() {
          total = dur;
        });
      }
    });

    _audioPlayer.playerStateStream.listen((state) {
      setState(() {
        isPlaying = state.playing;
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  void _togglePlay(String url) async {
    if (_audioPlayer.playing) {
      await _audioPlayer.pause();
    } else {
      try {
        await _audioPlayer.setUrl(url);
        await _audioPlayer.play();
      } catch (e) {
        debugPrint("Error loading audio: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Column(
          children: const [
            Text("PLAYING FROM SEARCH",
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text('"UX" in Search',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: BlocBuilder<AudioCubit, AudioState>(
        builder: (context, state) {
          final audioUrl = state.detailAudio?.path?.first.url ?? '';
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                // Cover
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    state.detailAudio?.thumbnail?.first.url ?? '',
                    height: context.sizeHeight * 0.5,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(state.detailAudio?.title ?? 'No Title',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Emily · UI/UX Designer",
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      backgroundColor: Color(0xFF1E1E1E),
                      label: Text('Soft Skill',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                    Text("Aug 4 • in English",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
                Slider(
                  value: current.inSeconds.toDouble(),
                  min: 0,
                  max: total.inSeconds.toDouble(),
                  onChanged: (value) {
                    _audioPlayer.seek(Duration(seconds: value.toInt()));
                  },
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatDuration(current),
                        style: TextStyle(color: Colors.white)),
                    Text(formatDuration(total),
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    Icon(Icons.skip_previous_rounded,
                        color: Colors.white, size: 36),
                    GestureDetector(
                      onTap: () => _togglePlay(audioUrl),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 32,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(Icons.skip_next_rounded,
                        color: Colors.white, size: 36),
                    Icon(Icons.bookmark_border, color: Colors.white),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
