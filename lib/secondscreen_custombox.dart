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
        borderRadius: BorderRadius.circular(80),
        color: Colors.red
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.fill,
            ),
          ), 
          //Positioned(
          //  top: 180,
          //  left: 0,
          //  right: 0,
          //  child: Center(
          //    child: Text(
          //      widget.title,
          //      style: const TextStyle(
          //        fontSize: 20,
          //        fontWeight: FontWeight.bold,
          //        color: Colors.white,
          //      ),
          //    ),
          //  ),
          //),
          // Add the gradient overlay here
          
          Positioned(
            bottom: 7.5,
            right: -5,
            child: IconButton(
              icon: Icon(
                widget.isCurrentlyPlaying
                    ? Icons.align_horizontal_left
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












