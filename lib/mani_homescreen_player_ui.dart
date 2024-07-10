////import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
//
//class Musicui extends StatefulWidget {
//  final String imagePath;
//  final String title;
//  final String audioPath;
//
//  const Musicui({
//    Key? key,
//    required this.imagePath,
//    required this.title,
//    required this.audioPath,
//  }) : super(key: key);
//
//  @override
//  State<Musicui> createState() => _MusicuiState();
//}
//
//class _MusicuiState extends State<Musicui> {
//  late AudioPlayer _audioPlayer;
//  PlayerState _audioPlayerState = PlayerState.stopped;
//
//  @override
//  void initState() {
//    super.initState();
//    _audioPlayer = AudioPlayer();
//    _audioPlayer.onPlayerStateChanged.listen((state) {
//      setState(() {
//        _audioPlayerState = state;
//      });
//    });
//    _playAudio();
//  }
//
//  @override
//  void dispose() {
//    _stopAudio();
//    _audioPlayer.release();
//    _audioPlayer.dispose();
//    super.dispose();
//  }
//
//  Future<void> _playAudio() async {
//    await _audioPlayer.play(AssetSource(widget.audioPath));
//  }
//
//  Future<void> _stopAudio() async {
//    await _audioPlayer.stop();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            Image.asset(widget.imagePath, width: 200, height: 200, fit: BoxFit.cover),
//            const SizedBox(height: 20),
//            Text(widget.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//            // Implement audio player controls here based on the audioPath
//            IconButton(
//              icon: Icon(
//                _audioPlayerState == PlayerState.playing
//                    ? Icons.pause
//                    : Icons.play_arrow,
//                color: Colors.blue,
//                size: 50,
//              ),
//              onPressed: () {
//                if (_audioPlayerState == PlayerState.playing) {
//                  _stopAudio();
//                } else {
//                  _playAudio();
//                }
//              },
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}


import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/audio.dart';

class Musicui extends StatefulWidget {
  final String imagePath;
  final String title;
  final String audioPath;

  const Musicui({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.audioPath,
  }) : super(key: key);

  

  @override
  State<Musicui> createState() => _MusicuiState();

  
}

class _MusicuiState extends State<Musicui> {
  
  

  late AudioPlayerManager audioPlayerManager;
  
  PlayerState audioPlayerState = PlayerState.stopped;

  @override
  void initState() {
    
    super.initState();
    audioPlayerManager = AudioPlayerManager(
      onAudioPlayerStateChanged: (state) {
        setState(() { 
          audioPlayerState = state;
          
          
        });
      },
    );
  }

  //@override
  //void dispose() {
  //  audioPlayerManager.dispose();
  //  super.dispose();
  //
  //}

  @override
  Widget build(BuildContext context) {
    
 

    return Scaffold( body: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.blue,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.fill,
              ),
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
          Positioned(
            bottom: 10,
            left: 60,
            //child: Center(
              child: 
              IconButton(
                icon: Icon(
                  audioPlayerState == PlayerState.playing
                      ? Icons.pause_circle_sharp
                      : Icons.play_circle_outline_rounded,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  
                   audioPlayerManager.stopAudio();
                   audioPlayerManager.playPauseAudio(widget.audioPath);
                  
                   
                
                },
              ),
            //),
          ),
        ],
      ),
    ));
  }
//@override
//  void dispose() {
//    audioPlayerManager.dispose();
//    super.dispose();
//  }

}