import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_clean_architecture/presentations/audio/cubit/audio_cubit.dart';
import 'package:test_clean_architecture/presentations/audio/cubit/audio_state.dart';

import '../../../lib.dart';

@RoutePage()
class AudioDetailView extends StatefulWidget implements AutoRouteWrapper {
  const AudioDetailView({super.key});

  @override
  State<AudioDetailView> createState() => _AudioDetailViewState();
   Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AudioCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _AudioDetailViewState extends State<AudioDetailView> {
  bool isPlaying = false;
  double progress = 80; // contoh: 80 detik dari total
  final double totalDuration = 216; // 3 menit 36 detik = 216 detik

  String formatDuration(double seconds) {
    final mins = seconds ~/ 60;
    final secs = (seconds % 60).toInt().toString().padLeft(2, '0');
    return '$mins:$secs';
  }

  @override
  void initState() {
    context.read<AudioCubit>().detailAudio();
    super.initState();
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
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                // Cover Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    state.detailAudio?.thumbnail?.first.url ?? '',
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),

                // Title and author
                Text("How to build intentional UX",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
                const SizedBox(height: 4),
                Text("Emily · UI/UX Designer",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),

                const SizedBox(height: 12),

                // Tags and metadata
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

                // Slider progress
                Slider(
                  value: progress,
                  min: 0,
                  max: totalDuration,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey.shade700,
                  onChanged: (value) {
                    setState(() {
                      progress = value;
                    });
                  },
                ),

                // Durasi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatDuration(progress),
                        style: TextStyle(color: Colors.white)),
                    Text(formatDuration(totalDuration),
                        style: TextStyle(color: Colors.white)),
                  ],
                ),

                const SizedBox(height: 12),

                // Kontrol playback
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    Icon(Icons.skip_previous_rounded,
                        color: Colors.white, size: 36),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
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
