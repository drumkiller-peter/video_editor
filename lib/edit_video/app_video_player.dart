import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer({super.key});

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    var source =
        // "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4";
        // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
        "https://static.videezy.com/system/resources/previews/000/008/445/original/Dark_Haired_Girl_in_disbelief_1.mp4";
    _controller = VideoPlayerController.network(source);
    initPlayer();
    super.initState();
  }

  initPlayer() async {
    await Future.delayed(const Duration(seconds: 2));
    await _controller.initialize().then((value) => setState(() {}));
    setState(() {
      _controller.play();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          !_controller.value.isInitialized
              ? const CircularProgressIndicator()
              : Container(
                  color: Colors.redAccent,
                  height: 300,
                  width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(
                      _controller,
                      key: GlobalKey(
                        debugLabel: "Debug",
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
