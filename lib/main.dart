import 'package:fitness_app/screens/login_screen.dart';
import 'package:fitness_app/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      home: LoginScreen(),
    ),
  );
}
