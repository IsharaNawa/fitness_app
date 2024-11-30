import 'package:fitness_app/models/intro_screen_model.dart';
import 'package:fitness_app/screens/intro_screen.dart';
import 'package:fitness_app/screens/start_screen.dart';
import 'package:flutter/material.dart';

final List<IntroScreenModel> models = [
  IntroScreenModel(
    backgroundImagePath: "assets/images/kicking_girl.png",
    mainTitle: "Training",
    description:
        "Manage your work out plans and achieve your fitness goals - whether losing weight or building muscle",
  ),
  IntroScreenModel(
    backgroundImagePath: "assets/images/rope_girl_1.png",
    mainTitle: "Measurements",
    description:
        "Track your progress with precise measurements and detailed analytics to stay motivated and on track",
  ),
  IntroScreenModel(
    backgroundImagePath: "assets/images/fighting_girl.png",
    mainTitle: "Diet",
    description:
        "Fuel your body with personalized meal plans and nutrition advice to reach your health and fitness goals",
  ),
  IntroScreenModel(
    backgroundImagePath: "assets/images/girl_holding_supplement.png",
    mainTitle: "Supplements",
    description:
        "Enhance your performance and recovery with expert guidance on the best supplements for your goals",
  ),
];

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // child: IntroScreen(
        //   introScreenModel: models[3],
        //   isFadingNeeded: false,
        // ),
        child: const StartScreen(),
      ),
    ),
  ));
}
