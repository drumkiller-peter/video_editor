// import 'dart:developer';

// import 'package:ffmpeg_kit_flutter_full_gpl/ffprobe_kit.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // late VideoEditorController _controller;

//   @override
//   void initState() {
//     // _controller = VideoEditorController.file(File('assets/video.mp4'));
//     // _controller.initialize();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(children: [
//         ElevatedButton(
//           onPressed: () async {
//             await getVideoDurationInSec("assets/video.mp4");
//           },
//           child: const Text('Pick Video'),
//         ),
//       ]),
//     );
//   }

//   //write me a code to getVideoDurationInSeconds with ffmpeg

//   Future<num> getVideoDurationInSec(String fileUrlOrPath) async {
//     var imageLink =
//         "https://www.videvo.net/video/the-interior-of-a-data-processing-center-3/656716/";
//     var res = await FFprobeKit.getMediaInformation(imageLink);
//     // .then((value) => log(value.getAllLogs().toString()));
//     var duration = await res.getDuration();
//     log(duration.toString());

//     var allLogs = await res.getAllLogs();
//     log(allLogs.toString());
//     for (var element in allLogs) {
//       log("GetMessage: ${element.getMessage()}");
//       log(element.getLevel().toString());
//       log(element.getSessionId().toString());
//     }
//     return 0.00;
//   }
// }
