import 'package:fitness_app/screens/dashboard_screen.dart';
import 'package:fitness_app/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(MaterialApp(
    home: DashboardScreen(
      userName: "Micheal Marshal",
    ),
  ));
}
