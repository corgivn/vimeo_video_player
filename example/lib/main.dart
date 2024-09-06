import 'package:flutter/material.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  /// also support url like this: 'www.vimeo.com/70591644', 'vimeo.com/70591644'
  // final String _vimeoVideoUrl = 'https://vimeo.com/226053498';
  final String _vimeoVideoUrl = 'https://player.vimeo.com/video/226053498';
  final String _baseUrl = 'https://api.vimeo.com/';
  final String token =
      'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'; // replace your token here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: VimeoVideoPlayer(
          url: _vimeoVideoUrl,
          baseUrl: _baseUrl,
          token: token,
          autoPlay: true,
        ),
      ),
    );
  }
}
