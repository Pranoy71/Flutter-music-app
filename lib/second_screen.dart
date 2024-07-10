import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/secondscreen_custombox.dart';
import 'package:music_app/audio.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
 String ? currentAudioPath;
  late AudioPlayerManager audioPlayerManager;

  @override
  void initState() {
    super.initState();
    audioPlayerManager = AudioPlayerManager(
      onAudioPlayerStateChanged: (state) {
        if (state == PlayerState.stopped) {
          // When the audio stops playing, set the currentAudioPath to null
          setState(() {
            currentAudioPath = '';
          });
        }
      },
    );
  }

  @override
  void dispose() {
    audioPlayerManager.dispose();
    super.dispose();
  }
 
 
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: screenheight,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 31, 16, 57)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        left: (screenwidth - 150) / 20,
                        child: const Text(
                          "Nature sounds",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                      Positioned(
                          top: 47,
                          left: (screenwidth - 150) / 20,
                          //right: (screenwidth / 2) + 83,
                          height: screenheight / 12,
                          width: (screenwidth - 185) / 2,
                          child: 
                                CustomBox(
                                  imagePath: 'assets/Waterfall.jpg',
                                  title: 'Waterfall peace',
                                  audioPath: 'forest_sound.mp3',
                                  isCurrentlyPlaying: currentAudioPath == 'forest_sound.mp3',
                                  audioPlayerManager: audioPlayerManager,
                                  updateCurrentAudioPath: (audioPath) {
                                    setState(() {
                                      currentAudioPath = audioPath;
                                     });
                                   },
                                 ),
                               ),
                      Positioned(
                          top: 47,
                          left: (screenwidth / 4) + 30,
                          //right: (screenwidth -) / 2,
                          height: screenheight / 12,
                          width: (screenwidth - 185) / 2,
                          child: 
                                CustomBox(
                                  imagePath: 'assets/Waterfall.jpg',
                                  title: 'Waterfall peace',
                                  audioPath: 'forest_sound.mp3',
                                  isCurrentlyPlaying: currentAudioPath == 'forest_sound.mp3',
                                  audioPlayerManager: audioPlayerManager,
                                  updateCurrentAudioPath: (audioPath) {
                                    setState(() {
                                      currentAudioPath = audioPath;
                                     });
                                   },
                                 ),
                               ),  
                      Positioned(
                          top: 47,
                          left: (screenwidth / 4) + 150,
                          height: screenheight / 12,
                          width: (screenwidth - 185) / 2,
                          child: 
                                CustomBox(
                                  imagePath: 'assets/Waterfall.jpg',
                                  title: 'Waterfall peace',
                                  audioPath: 'forest_sound.mp3',
                                  isCurrentlyPlaying: currentAudioPath == 'forest_sound.mp3',
                                  audioPlayerManager: audioPlayerManager,
                                  updateCurrentAudioPath: (audioPath) {
                                    setState(() {
                                      currentAudioPath = audioPath;
                                     });
                                   },
                                 ),
                               ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                      
                      Positioned(
                          top: 130,
                          left: (screenwidth - 150) / 20,
                          //right: (screenwidth / 2) + 83,
                          height: screenheight / 12,
                          width: (screenwidth - 185) / 2,
                          child: 
                                CustomBox(
                                  imagePath: 'assets/Waterfall.jpg',
                                  title: 'Waterfall peace',
                                  audioPath: 'forest_sound.mp3',
                                  isCurrentlyPlaying: currentAudioPath == 'forest_sound.mp3',
                                  audioPlayerManager: audioPlayerManager,
                                  updateCurrentAudioPath: (audioPath) {
                                    setState(() {
                                      currentAudioPath = audioPath;
                                     });
                                   },
                                 ),
                               ),
                      Positioned(
                          top: 130,
                          left: (screenwidth / 4) + 30,
                          //right: (screenwidth -) / 2,
                          height: screenheight / 12,
                          width: (screenwidth - 185) / 2,
                          child: 
                                CustomBox(
                                  imagePath: 'assets/Waterfall.jpg',
                                  title: 'Waterfall peace',
                                  audioPath: 'forest_sound.mp3',
                                  isCurrentlyPlaying: currentAudioPath == 'forest_sound.mp3',
                                  audioPlayerManager: audioPlayerManager,
                                  updateCurrentAudioPath: (audioPath) {
                                    setState(() {
                                      currentAudioPath = audioPath;
                                     });
                                   },
                                 ),
                               ),  
                      Positioned(
                          top: 130,
                          left: (screenwidth / 4) + 150,
                          height: screenheight / 12,
                          width: (screenwidth - 185) / 2,
                          child: 
                                CustomBox(
                                  imagePath: 'assets/Waterfall.jpg',
                                  title: 'Waterfall peace',
                                  audioPath: 'forest_sound.mp3',
                                  isCurrentlyPlaying: currentAudioPath == 'forest_sound.mp3',
                                  audioPlayerManager: audioPlayerManager,
                                  updateCurrentAudioPath: (audioPath) {
                                    setState(() {
                                      currentAudioPath = audioPath;
                                     });
                                   },
                                 ),
                               ),           
                    ],
                  ),
                )
              ],
            )));
  }
}
