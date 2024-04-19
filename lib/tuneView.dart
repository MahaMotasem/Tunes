import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});
  List<String> sounds = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Flutter Tune",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Catogory(color: Colors.red, sound: sounds[0]),
          Catogory(color: Colors.orange, sound: sounds[1]),
          Catogory(color: Colors.amber, sound: sounds[2]),
          Catogory(color: Colors.green, sound: sounds[3]),
          Catogory(color: Color(0xff2F9688), sound: sounds[4]),
          Catogory(color: Colors.blue, sound: sounds[5]),
          Catogory(color: Colors.purple, sound: sounds[6]),
        ],
      ),
    );
  }
}

class Catogory extends StatefulWidget {
  const Catogory({super.key, this.color, this.sound});
  final Color? color;
  final String? sound;

  @override
  State<Catogory> createState() => _CatogoryState();
}

class _CatogoryState extends State<Catogory> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            final player = AudioPlayer();
            player.play(AssetSource('${widget.sound}'));
          });
        },
        child: Container(
          height: 50,
          width: double.infinity,
          color: widget.color,
        ),
      ),
    );
  }
}
