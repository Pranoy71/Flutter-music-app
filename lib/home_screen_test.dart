import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/custombox_test.dart';
import 'package:music_app/audio.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                color: Color.fromARGB(219, 27, 16, 45), //Color.fromARGB(235, 10, 55, 55),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: screenheight / 9,
                    left: (screenwidth - 150) / 20,
                    right: (screenwidth / 2) + 12,
                    height: screenheight / 3,
                    child: CustomBox(
                      imagePath: 'assets/Forest.jpg',
                      title: 'Deep Forest Vibe',
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
                    top: screenheight / 9,
                    left: (screenwidth / 2) + 12,
                    right: (screenwidth - 150) / 20,
                    height: screenheight / 3,
                    child: CustomBox(
                      imagePath: 'assets/Underwater.jpg',
                      title: 'Underwater',
                      audioPath: 'underwater_sound.wav',
                      isCurrentlyPlaying: currentAudioPath == 'underwater_sound.wav',
                      audioPlayerManager: audioPlayerManager,
                      updateCurrentAudioPath: (audioPath) {
                        setState(() {
                          currentAudioPath = audioPath;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    top: (screenheight / 2) - 22,
                    left: (screenwidth - 150) / 20,
                    right: (screenwidth / 2) + 12,
                    height: screenheight / 3,
                    child: CustomBox(
                      imagePath: 'assets/River.jpg',
                      title: 'River Century',
                      audioPath: 'river_sound.wav',
                      isCurrentlyPlaying: currentAudioPath == 'river_sound.wav',
                      audioPlayerManager: audioPlayerManager,
                      updateCurrentAudioPath: (audioPath) {
                        setState(() {
                          currentAudioPath = audioPath;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    top: (screenheight / 2) - 22,
                    left: (screenwidth / 2) + 12,
                    right: (screenwidth - 150) / 20,
                    height: screenheight / 3,
                    child: CustomBox(
                      imagePath: 'assets/Waterfall.jpg',
                      title: 'Waterfall peace',
                      audioPath: 'waterfall_sound.mp3',
                      isCurrentlyPlaying: currentAudioPath == 'waterfall_sound.mp3',
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
            ),
          ],
        ),
      ),
    );
  }
}





//import "package:flutter/material.dart";
//import 'package:music_app/custombox_test.dart';
//import 'package:music_app/audio.dart';
//var songnumber=0;
//var currentaudiopath=currentaudio;
//
//class Homescreen extends StatefulWidget {
//  const Homescreen({super.key});
//
//  @override
//  State<Homescreen> createState() => _HomescreenState();
//}
//
//
//class _HomescreenState extends State<Homescreen> {
//  
////var songnumber=0;
//
//  @override
//  Widget build(BuildContext context) {
//    double screenheight = MediaQuery.of(context).size.height;
//    double screenwidth = MediaQuery.of(context).size.width;
//
//    return Scaffold(
//      body: SingleChildScrollView(
//        scrollDirection: Axis.vertical,
//        child: Column(
//          children: [
//            Container(
//              height: screenheight,
//              decoration: const BoxDecoration(
//                color: Color.fromARGB(241, 16, 85, 86),//Color.fromARGB(255, 22, 76, 108),
//              ),
//              child: Stack(
//                children: [
//                  Positioned(
//                    //1st box
//                    top: screenheight / 9,
//                    left: (screenwidth - 150) / 20,
//                    right: (screenwidth / 2) + 12,
//                    height: screenheight / 3,
//                    child:   const CustomBox(
//                      imagePath: 'assets/Forest.jpg',
//                      title: 'Deep Forest Vibe',
//                      audioPath: 'forest_sound.mp3' ,
//                     
//                      
//                    ),
//                  ),
//                  Positioned(
//                    //2nd box
//                    top: screenheight / 9,
//                    left: (screenwidth / 2) + 12,
//                    right: (screenwidth - 150) / 20,
//                    height: screenheight / 3,
//                    child: const CustomBox(
//                      imagePath: 'assets/Underwater.jpg',
//                      title: 'Underwater',
//                      audioPath: 'underwater_sound.wav',
//                     // boxvalue: 2,
//                    ),
//                  ),
//                  Positioned(
//                    //3rd box
//                    top: (screenheight / 2) - 22,
//                    left: (screenwidth - 150) / 20,
//                    right: (screenwidth / 2) + 12,
//                    height: screenheight / 3,
//                    child: const CustomBox(
//                      imagePath: 'assets/River.jpg',
//                      title: 'River Century',
//                      audioPath: 'underwater_sound.wav',
//                    ),
//                  ),
//                  Positioned(
//                    //4th box
//                    top: (screenheight / 2) - 22,
//                    left: (screenwidth / 2) + 12,
//                    right: (screenwidth - 150) / 20,
//                    height: screenheight / 3,
//                    child: const CustomBox(
//                      imagePath: 'assets/Waterfall.jpg',
//                      title: 'Waterfall peace',
//                      audioPath: 'forest_sound.mp3',
//                    ),
//                  ),
//                  // Add more CustomBox widgets for additional boxes
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
