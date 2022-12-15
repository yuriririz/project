import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const Quizvideo());

/// Stateful widget to fetch and then display video content.
class Quizvideo extends StatefulWidget {
  const Quizvideo({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<Quizvideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Scaffold(
        //Appbar
        appBar: AppBar(
        backgroundColor: Color(0xFFFFB200),
        title: Text("Quiz"),
        
        
      ),
    
      //Video player
        body: 
        Container(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        
      
        //button play and stop
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),

        ),

      ),
    );
  }
  

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}