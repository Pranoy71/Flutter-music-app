import 'package:flutter/material.dart';
import 'package:music_app/audio.dart';

class CustomBox extends StatefulWidget {
  final String imagePath;
  final String title;
  final String audioPath;
  final bool isCurrentlyPlaying;
  final AudioPlayerManager audioPlayerManager;
  final Function(String) updateCurrentAudioPath;

  const CustomBox({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.audioPath,
    required this.isCurrentlyPlaying,
    required this.audioPlayerManager,
    required this.updateCurrentAudioPath,
  }) : super(key: key);

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.red
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.fill,
            ),
          ), 
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Add the gradient overlay here
          
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              icon: Icon(
                widget.isCurrentlyPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
                color: Colors.white,
              ),
              onPressed: () {
                if (widget.isCurrentlyPlaying) {
                  widget.audioPlayerManager.stopAudio();
                  //widget.audioPlayerManager.playPauseAudio(widget.audioPath);
                } else {
                  widget.audioPlayerManager.playPauseAudio(widget.audioPath);
                }
                widget.updateCurrentAudioPath(widget.isCurrentlyPlaying ? '' : widget.audioPath);
              },
            ),
          ),
        ],
      ),
    );
  }
}



//import 'package:flutter/material.dart';
//import 'package:music_app/audio.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'home_screen_test.dart';
//
//class CustomBox extends StatefulWidget {
//  final String imagePath;
//  final String title;
//  final String audioPath;
//
//  const CustomBox({
//    Key? key,
//    required this.imagePath,
//    required this.title,
//    required this.audioPath,
//  }) : super(key: key);
//
//  @override
//  State<CustomBox> createState() => _CustomBoxState();
//}
//
//class _CustomBoxState extends State<CustomBox> {
//  
//  late AudioPlayerManager audioPlayerManager;
//  PlayerState audioPlayerState = PlayerState.stopped;
//
//  @override
//  void initState() {
//    
//    super.initState();
//    audioPlayerManager = AudioPlayerManager(
//      onAudioPlayerStateChanged: (state) {
//        setState(() { 
//          audioPlayerState = state;
//          
//          
//        });
//      },
//    );
//  }
//
//  @override
//  void dispose() {
//    audioPlayerManager.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(40),
//        color: Colors.orange,
//      ),
//      child: Stack(
//        children: [
//          ClipRRect(
//            borderRadius: BorderRadius.circular(40),
//            child: Image.asset(
//              widget.imagePath,
//              fit: BoxFit.fill,
//            ),
//          ),
//          Positioned(
//            top: 180,
//            left: 0,
//            right: 0,
//            child: Center(
//              child: Text(
//                widget.title,
//                style: const TextStyle(
//                  fontSize: 20,
//                  fontWeight: FontWeight.bold,
//                  color: Colors.white,
//                ),
//              ),
//            ),
//          ),
//          Positioned(
//            bottom: 0,
//            right: 0,
//            child: IconButton(
//              icon: Icon(
//                audioPlayerManager.audioPlayerState == PlayerState.playing
//                    ? Icons.pause
//                    : Icons.play_arrow,
//                color: Colors.white,
//              ),
//              onPressed: () {
//                 
//                if(songnumber==0)
//                {
//                  
//                audioPlayerManager.playPauseAudio(widget.audioPath); 
//                
//                }
//                else
//                {
//                  audioPlayerManager.audioPlayer.setSource(AssetSource(currentaudiopath));
//                  audioPlayerManager.stopAudio();
//                  //audioPlayerManager.dispose();
//                }
//                if (audioPlayerManager.audioPlayerState == PlayerState.stopped)
//                {
//                  songnumber=1;
//                  print("+1");
//                }
//                else{
//                  songnumber=0;
//                }
//              },
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}








