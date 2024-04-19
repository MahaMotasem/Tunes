import 'package:flutter/material.dart';
import 'package:tunes_app/tuneView.dart';

void main() {
  runApp(TunesApp());
}

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneView(),
    );
  }
}
