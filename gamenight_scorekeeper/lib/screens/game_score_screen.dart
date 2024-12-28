import 'package:flutter/material.dart';

class GameScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String gameTitle =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(gameTitle),
      ),
      body: Center(
        child: Text(
          'Scores for $gameTitle will appear here.',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
