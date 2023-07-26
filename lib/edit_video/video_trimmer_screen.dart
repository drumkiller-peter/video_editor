// import 'dart:developer';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// // import 'package:video_trimmer/video_trimmer.dart';

// class VideoTrimmerScreen extends StatelessWidget {
//   const VideoTrimmerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Video Trimmer"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text("LOAD VIDEO"),
//           onPressed: () async {
//             // FilePickerResult? result = await FilePicker.platform.pickFiles(
//             //   type: FileType.video,
//             //   allowCompression: false,
//             // );
//             // if (result != null) {

//             //   File file = File(result.files.single.path!);
//             //   Navigator.of(context).push(
//             //     MaterialPageRoute(builder: (context) {
//             //       return TrimmerView(file);
//             //     }),
//             //   );
//             // }
//             var imageLink =
//                 "https://www.videvo.net/video/the-interior-of-a-data-processing-center-3/656716/";
//             File file = File(imageLink);
//             Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) {
//                 return TrimmerView(file);
//               }),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class TrimmerView extends StatefulWidget {
//   final File file;

//   const TrimmerView(this.file, {super.key});

//   @override
//   _TrimmerViewState createState() => _TrimmerViewState();
// }

// class _TrimmerViewState extends State<TrimmerView> {
//   // final Trimmer _trimmer = Trimmer();
//   late VideoPlayerController _controller;

//   final double _startValue = 0.0;
//   final double _endValue = 0.0;

//   final bool _isPlaying = false;
//   final bool _progressVisibility = false;

//   // Future<String?> _saveVideo() async {
//   //   setState(() {
//   //     _progressVisibility = true;
//   //   });

//   //   String? value;

//   //   await _trimmer
//   //       .saveTrimmedVideo(
//   //           startValue: _startValue,
//   //           endValue: _endValue,
//   //           onSave: (String? outputPath) {
//   //             log("Saved");
//   //             log("message: $outputPath");
//   //             value = outputPath;
//   //           })
//   //       .then((value) {
//   //     setState(() {
//   //       _progressVisibility = false;
//   //       value = value;
//   //       print(_progressVisibility);
//   //     });
//   //   });

//   //   return value;
//   // }

//   void _loadVideo() async {
//     try {
//       // await _trimmer.loadVideo(videoFile: widget.file);
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   _loadUrlVideo() async {
//     var videoLink =
//         // "https://www.videvo.net/video/the-interior-of-a-data-processing-center-3/656716/";
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4";
//     _controller = VideoPlayerController.network(videoLink)..initialize();
//     // await _controller.initialize();
//     // await _controller.setLooping(true);
//     await _controller.play();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _loadUrlVideo();
//     // _loadVideo();
//   }

//   @override
//   void dispose() {
//     // _trimmer.dispose();
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Video Trimmer"),
//       ),
//       body: Builder(
//         builder: (context) => Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[
//             // Visibility(
//             //   visible: _progressVisibility,
//             //   child: const LinearProgressIndicator(
//             //     backgroundColor: Colors.red,
//             //   ),
//             // ),
//             // ElevatedButton(
//             //   onPressed: _progressVisibility
//             //       ? null
//             //       : () async {
//             //           _saveVideo().then((outputPath) {
//             //             print('OUTPUT PATH: $outputPath');
//             //             const snackBar = SnackBar(
//             //                 content: Text('Video Saved successfully'));
//             //             ScaffoldMessenger.of(context).showSnackBar(
//             //               snackBar,
//             //             );
//             //           });
//             //         },
//             //   child: const Text("SAVE"),
//             // ),
//             // Expanded(
//             //   child: VideoViewer(trimmer: _trimmer),
//             // ),
//             Expanded(
//               child: VideoPlayer(_controller),
//             ),
//             // Center(
//             //   child: TrimViewer(
//             //     trimmer: _trimmer,
//             //     viewerHeight: 50.0,
//             //     viewerWidth: MediaQuery.of(context).size.width,
//             //     maxVideoLength: const Duration(seconds: 60),
//             //     onChangeStart: (value) => _startValue = value,
//             //     onChangeEnd: (value) => _endValue = value,
//             //     onChangePlaybackState: (value) =>
//             //         setState(() => _isPlaying = value),
//             //   ),
//             // ),
//             // TextButton(
//             //   child: _isPlaying
//             //       ? const Icon(
//             //           Icons.pause,
//             //           size: 80.0,
//             //           color: Colors.white,
//             //         )
//             //       : const Icon(
//             //           Icons.play_arrow,
//             //           size: 80.0,
//             //           color: Colors.white,
//             //         ),
//             //   onPressed: () async {
//             // bool playbackState = await _trimmer.videoPlaybackControl(
//             //   startValue: _startValue,
//             //   endValue: _endValue,
//             // );
//             //     _controller.play();

//             //     setState(() {
//             //       _isPlaying = _controller.value.isPlaying;
//             //     });
//             //   },
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
