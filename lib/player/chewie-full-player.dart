import 'package:flutter/material.dart';
import 'package:nan_movie/player/chewie_list_item.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;

class MychewieFullApp extends StatefulWidget {
  MychewieFullApp({Key key}) : super(key: key);

  _MychewieFullAppState createState() => _MychewieFullAppState();
}

class _MychewieFullAppState extends State<MychewieFullApp> {
  int nbreVideo;
  List lienvideos = [
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "https://youtu.be/b8e1rWhcQ_8",
    "https://www.youtube.com/watch?v=Ly4TMxFRWhM",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Make getr request
    print("${lienvideos[0]}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView.builder(
          itemCount: lienvideos == null ? 0 : lienvideos.length,
          itemBuilder: (BuildContext context, int index) {
            return new ChewieListItem(
              videoPlayerController:
                  VideoPlayerController.network("${lienvideos[0]}"),
              looping: true,
            );
          }),
    );
  }
}
