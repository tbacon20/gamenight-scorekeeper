import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/game_score_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Selector',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      routes: {
        '/gameScore': (context) => GameScoreScreen(),
      },
    );
  }
}
