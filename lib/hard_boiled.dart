import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:slide_countdown/slide_countdown.dart';

class HardBoilPage extends StatelessWidget {
  const HardBoilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hard  Boiled'),
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
                duration: Duration(minutes: 10),
                onDone: () async {
                  final player = AudioPlayer();
                  await player.play(UrlSource(
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

// class HardBoiled extends StatefulWidget {
//   const HardBoiled({super.key});

//   @override
//   State<HardBoiled> createState() => _HardBoiledState();
// }

// class _HardBoiledState extends State<HardBoiled> {

//   //variables
//   int timeLeft = 10;


//   //timer  method
//   void _startCoundDown(){
//     Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         timeLeft --;
//       });

//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               timeLeft.toString(),
//               style: TextStyle(fontSize: 70),

//             ),
//             MaterialButton(onPressed: _startCoundDown,
//               color: Colors.deepPurple,
//             child: Text(
//               'S T A R T',
//               style: TextStyle(color: Colors.white),
//               ),)
            
//           ],
//         ),
//       ),
//     );
//   }
// }