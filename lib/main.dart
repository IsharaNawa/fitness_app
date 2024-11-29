import 'package:fitness_app/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: const StartScreen(),
      ),
    ),
  ));
}
