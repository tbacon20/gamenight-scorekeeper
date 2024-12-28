import 'package:flutter/material.dart';

class GameSelectionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const GameSelectionButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
