//import 'package:audioplayers/audioplayers.dart';
//
//class AudioPlayerManager {
//  AudioPlayer audioPlayer = AudioPlayer();
//  PlayerState audioPlayerState = PlayerState.stopped;
//  Function(PlayerState) onAudioPlayerStateChanged;
//  String? currentAudioPath;
//
//  AudioPlayerManager({required this.onAudioPlayerStateChanged});
//
//  Future<void> playPauseAudio(String audioPath) async {
//    audioPlayer.onPlayerStateChanged.listen((state) {
//      onAudioPlayerStateChanged(state);
//      audioPlayerState = state;
//    });
//
//    if (audioPlayerState == PlayerState.playing) {
//      await audioPlayer.pause();
//    } else {
//      await audioPlayer.play(AssetSource(audioPath));
//      currentAudioPath = audioPath;
//    }
//  }
//
//  Future<void> stopAudio() async {
//    if (currentAudioPath != null) {
//      await audioPlayer.stop();
//    }
//  }
//
//  void dispose() {
//    audioPlayer.dispose();
//    audioPlayer.release();
//  }
//}





import 'package:audioplayers/audioplayers.dart';

//import 'package:music_app/home_screen_test.dart';
//import 'home_screen_test.dart';
//var currentaudio;
class AudioPlayerManager {
 //var currentAudioPath=null; 
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.stopped;
  Function(PlayerState) onAudioPlayerStateChanged;
  

  AudioPlayerManager({required this.onAudioPlayerStateChanged});

  Future<void> playPauseAudio(String audioPath) async {

      audioPlayer.onPlayerStateChanged.listen((state) {
      onAudioPlayerStateChanged(state);
      audioPlayerState = state;
      
    });

    //if (audioPlayerState == PlayerState.playing) {
    //  print("pause");
    //  await audioPlayer.pause();
    //} 
    //else
    //{
     
      print("lastplayer");
      await audioPlayer.play(AssetSource(audioPath));
      //currentaudio=audioPath;
   //}
    //}

    
  }

  Future<void> stopAudio() async {
    print("stop");
    //audioPlayer.setSource(AssetSource(currentaudiopath));
    await audioPlayer.stop();
  }

  void dispose() {
    audioPlayer.dispose();
    audioPlayer.release();
    
    //
  }
}


