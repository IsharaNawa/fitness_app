import 'package:fitness_app/widgets/start_screen_image_circle_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/app_symbol.png',
                width: 28,
              ),
              const SizedBox(width: 12),
              Text(
                "FITNESS",
                style: GoogleFonts.jetBrainsMono(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 6,
                ),
              ),
            ],
          ),
          const StartScreenImageCircleContainer(),
          Text(
            "Let's Move",
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 250,
            child: Text(
              "Fitness and wellness for you anytime, anywhere",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  const WidgetStatePropertyAll<Color>(Colors.black),
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 50,
                ),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            child: Text(
              "GET STARTED",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 7.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
