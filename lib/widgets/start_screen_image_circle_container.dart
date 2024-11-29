import 'package:flutter/material.dart';

class StartScreenImageCircleContainer extends StatefulWidget {
  StartScreenImageCircleContainer({super.key});

  @override
  _StartScreenImageCircleContainerState createState() =>
      _StartScreenImageCircleContainerState();
}

class _StartScreenImageCircleContainerState
    extends State<StartScreenImageCircleContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  final double mainImageRadius = 180;
  final double otherImageRadius = 150;
  final List<String> images = [
    'assets/images/bodybuilder.png',
    'assets/images/running_girl_with_strip.png',
    'assets/images/girl_holding_supplement.png',
    'assets/images/running_girl_with_red_background.png',
    'assets/images/girl_with_dumbbells.png',
    'assets/images/rope_girl_2.png'
  ];
  final double paddingFromTopToFirstImage = 25;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3), // Duration for each pop
    );

    // Create a Tween to control the scale of the circles
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    // Start the animation and repeat it indefinitely
    _controller.repeat(
        reverse: true); // This makes the animation reverse and repeat
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 500,
      color: Colors.white,
      child: Stack(
        children: [
          // Animated main image circle
          Positioned(
            left: (screenWidth - mainImageRadius) / 2,
            top: paddingFromTopToFirstImage,
            child: ScaleTransition(
              scale: _scaleAnimation, // Apply the scale animation
              child: ClipOval(
                child: Image.asset(
                  images[0],
                  width: mainImageRadius,
                  height: mainImageRadius,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Animated other image circles
          Positioned(
            left: (screenWidth - otherImageRadius) / 2,
            top: paddingFromTopToFirstImage + mainImageRadius + 25,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: ClipOval(
                child: Image.asset(
                  images[1],
                  width: otherImageRadius,
                  height: otherImageRadius,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: (screenWidth - otherImageRadius) / 2 - otherImageRadius,
            top: (500 - mainImageRadius - paddingFromTopToFirstImage) / 2,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: ClipOval(
                child: Image.asset(
                  images[2],
                  width: otherImageRadius,
                  height: otherImageRadius,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: (screenWidth - otherImageRadius) / 2 + otherImageRadius,
            top: (500 - mainImageRadius - paddingFromTopToFirstImage) / 2,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: ClipOval(
                child: Image.asset(
                  images[3],
                  width: otherImageRadius,
                  height: otherImageRadius,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: (screenWidth - otherImageRadius) / 2 - otherImageRadius,
            top: (500 - mainImageRadius - paddingFromTopToFirstImage) / 2 +
                otherImageRadius +
                25,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: ClipOval(
                child: Image.asset(
                  images[4],
                  width: otherImageRadius,
                  height: otherImageRadius,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: (screenWidth - otherImageRadius) / 2 + otherImageRadius,
            top: (500 - mainImageRadius - paddingFromTopToFirstImage) / 2 +
                otherImageRadius +
                25,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: ClipOval(
                child: Image.asset(
                  images[5],
                  width: otherImageRadius,
                  height: otherImageRadius,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
