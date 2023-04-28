import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FlutterTuneWedgite extends StatelessWidget {
  const FlutterTuneWedgite(
      {super.key, required this.itemColor, required this.audio});
  final Color itemColor;
  final String audio;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(audio));
        },
        child: Container(
          color: itemColor,
        ),
      ),
    );
  }
}
