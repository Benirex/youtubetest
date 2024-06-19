import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_test/video_detail.dart';
import 'package:youtube_test/video_player_screen.dart';


class VideoListScreen extends StatefulWidget {
  const VideoListScreen({super.key,});

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {

  final double _videoHeight = 250;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Tutorial Videos"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: _videoHeight,
            width: width,
            child: VideoPlayerScreen(videoDetail: VideoDetail(videoId: "IWbLM-q-dd8", height: _videoHeight, width: width),
            ),
          ),
         const  SizedBox(height: 10),
          SizedBox(
            height: _videoHeight,
            width: width,
            child: VideoPlayerScreen(videoDetail: VideoDetail(videoId: "IWbLM-q-dd8", height: _videoHeight, width: width),
            ),
          ),
          const  SizedBox(height: 10),
          SizedBox(
            height: _videoHeight,
            width: width,
            child: VideoPlayerScreen(videoDetail: VideoDetail(videoId: "bVlKz6WtMIA", height: _videoHeight, width: width),
            ),
          ),
          const  SizedBox(height: 10),
          SizedBox(
            height: _videoHeight,
            width: width,
            child: VideoPlayerScreen(videoDetail: VideoDetail(videoId: "IWbLM-q-dd8", height: _videoHeight, width: width),
            ),
          ),
        ],
      ),
    );
  }
}
