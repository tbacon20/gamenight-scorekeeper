import 'package:flutter/material.dart';
import '../widgets/game_selection_button.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> games = [
    {'title': '5 Crowns'},
    {'title': 'Catan'},
    {'title': 'Codenames'},
    {'title': 'Dominion'},
    {'title': 'Exploding Kittens'},
    {'title': 'Pandemic'},
    {'title': 'Risk'},
    {'title': 'Settlers of Catan'},
    {'title': 'Ticket to Ride'},
    {'title': 'Uno'},
    {'title': 'Yahtzee'},
    {'title': 'Battleship'},
    {'title': 'Checkers'},
    {'title': 'Scrabble'},
    {'title': 'Monopoly'},
    {'title': 'Poker'},
    {'title': 'Trivia'},
    {'title': 'Checkers'},
    {'title': 'Scrabble'},
    {'title': 'Monopoly'},
    {'title': 'Poker'},
    {'title': 'Trivia'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: games.map((game) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: GameSelectionButton(
                title: game['title']!,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/gameScore',
                    arguments: game['title'],
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
