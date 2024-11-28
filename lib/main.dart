// import 'package:fitness_app/start_screen.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: const StartScreen(),
//       ),
//     ),
//   ));
// }

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Looping Animated Circles')),
        body: AnimatedContainerCircles(),
      ),
    );
  }
}

class AnimatedContainerCircles extends StatefulWidget {
  @override
  _AnimatedContainerCirclesState createState() =>
      _AnimatedContainerCirclesState();
}

class _AnimatedContainerCirclesState extends State<AnimatedContainerCircles>
    with TickerProviderStateMixin {
  final List<String> images = [
    'assets/images/bodybuilder.png', // Replace with your assets
    'assets/images/bodybuilder.png', // Replace with your assets
    'assets/images/bodybuilder.png', // Replace with your assets
    'assets/images/bodybuilder.png', // Replace with your assets
    'assets/images/bodybuilder.png', // Replace with your assets
    'assets/images/bodybuilder.png', // Replace with your assets
  ];

  List<Offset> positions = [];
  late AnimationController _controller;
  late double screenHeight;
  late double screenWidth;
  late double containerHeight;
  final double circleDiameter = 120.0;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: false); // Repeat the animation indefinitely

    // Initialize positions for the circles
    WidgetsBinding.instance.addPostFrameCallback((_) {
      screenHeight = MediaQuery.of(context).size.height;
      screenWidth = MediaQuery.of(context).size.width;
      containerHeight = screenHeight * 0.5; // 50% of the screen height

      setState(() {
        _generateInitialPositions();
      });
    });
  }

  // Generate random positions for circles
  void _generateInitialPositions() {
    final random = Random();

    while (positions.length < images.length) {
      final double x = random.nextDouble() * (screenWidth - circleDiameter);
      final double y = random.nextDouble() * (containerHeight - circleDiameter);

      final Offset newPosition = Offset(x, y);
      if (positions
          .every((pos) => (pos - newPosition).distance >= circleDiameter)) {
        positions.add(newPosition);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: containerHeight, // 50% of the screen height
        width: screenWidth, // Take full screen width
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        child: Stack(
          children: List.generate(images.length, (index) {
            // Define a tween to move circles from right to left
            final tween = Tween<double>(
              begin: screenWidth, // Start from the right
              end: -circleDiameter, // End at the left side (off-screen)
            );

            return AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                // Calculate the current position based on the controller's value
                double position = tween.evaluate(_controller);

                // When the circle moves off the left boundary, generate a new circle at the right side
                if (position <= -circleDiameter) {
                  setState(() {
                    // Generate new position for the circle and reset the circle's position
                    positions[index] = Offset(screenWidth, positions[index].dy);
                  });
                  position = screenWidth; // Reset position to the right side
                }

                return Positioned(
                  top: positions[index].dy,
                  left:
                      position, // Apply dynamic position for continuous movement
                  child: CircleAvatar(
                    radius: circleDiameter / 2,
                    backgroundImage: AssetImage(images[index]),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the animation controller when done
    _controller.dispose();
    super.dispose();
  }
}
