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
          ClipOval(
            child: Image.asset(
              'assets/images/bodybuilder.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
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
