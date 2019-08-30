import 'package:flutter_proj2/chewie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo', 
      theme: ThemeData(
        primarySwatch: Colors.blue 
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget  {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/demo.mp4'
            ),
            looping: true
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
            'videos/jumpFence.mp4'
            ),
            looping: true
          ),
          //ChewieListItem(videoPlayerController: VideoPlayerController.network(
            //'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/error.mp4'
            //),
          //),

        ]
      )
    );
  }
}