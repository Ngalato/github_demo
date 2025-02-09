import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class SoftBoilPage extends StatelessWidget {
  const SoftBoilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Soft Boiled'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 500,
            child: Center(
              child: SlideCountdownSeparated(
                duration: Duration(minutes: 3),
                onDone: () {
                  final player = AudioPlayer();
                  player.play(UrlSource(
                      'https://sfxcontent.s3.amazonaws.com/soundfx/SmokeDetectorAlarm.mp3'));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
