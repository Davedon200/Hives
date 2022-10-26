import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  void keysound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({required Color color, required int sound}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          keysound(sound);
        },
        child: Container(
          height: 30.0,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          buildKey(
            color: Colors.red,
            sound: 0,
          ),
          buildKey(
            color: Colors.red,
            sound: 1,
          ),
          buildKey(
            color: Colors.red,
            sound: 2,
          ),
        ],
      )),
    );
  }
}
