import 'package:flutter/material.dart';

import '../wedgits/flutterTuneWedgits.dart';

class FlutterTune extends StatelessWidget {
  const FlutterTune({super.key});
  static const id = "FlutterTune";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[700],
          title: const Text(
            "Flutter Tune",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            FlutterTuneWedgite(
                itemColor: Colors.red, audio: "sounds/note1.wav"),
            FlutterTuneWedgite(
                itemColor: Colors.orange, audio: "sounds/note2.wav"),
            FlutterTuneWedgite(
                itemColor: Colors.yellow, audio: "sounds/note3.wav"),
            FlutterTuneWedgite(
                itemColor: Colors.green, audio: "sounds/note4.wav"),
            FlutterTuneWedgite(
                itemColor: Colors.indigo, audio: "sounds/note5.wav"),
            FlutterTuneWedgite(
                itemColor: Colors.blue, audio: "sounds/note6.wav"),
            FlutterTuneWedgite(
                itemColor: Colors.purple, audio: "sounds/note7.wav"),
          ],
        ));
  }
}
