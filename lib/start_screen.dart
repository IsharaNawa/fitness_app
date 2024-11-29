import 'package:fitness_app/widgets/start_screen_image_circle_container.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "FITNESS",
            style: TextStyle(fontSize: 20),
          ),
          StartScreenImageCircleContainer(),
          const SizedBox(
            height: 20,
          ),
          const Text("Let's Move"),
          const SizedBox(
            height: 20,
          ),
          const Text("Fitness and wellness for you anytime, anywhere"),
          const SizedBox(
            height: 20,
          ),
          FilledButton(
            onPressed: () {},
            child: const Text("GET STARTED"),
          )
        ],
      ),
    );
  }
}
