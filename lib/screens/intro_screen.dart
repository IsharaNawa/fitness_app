import 'package:fitness_app/data/intro_screen_models.dart';
import 'package:fitness_app/models/intro_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  final IntroScreenModel introScreenModel;
  final bool isFadingNeeded;

  const IntroScreen({
    super.key,
    required this.introScreenModel,
    required this.isFadingNeeded,
  });

  void navigateToNextIntroScreen(BuildContext context) {
    int index = introScreenModels
        .indexWhere((model) => model.mainTitle == introScreenModel.mainTitle);
    index = (index + 1) % introScreenModels.length;

    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => IntroScreen(
          introScreenModel: introScreenModels[index],
          isFadingNeeded: false,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          navigateToNextIntroScreen(context);
        },
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: -110,
              child: Image.asset(
                introScreenModel.getBackgroundImagePath,
                width: 800,
                height: 1000,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 40, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          introScreenModel.getmainTitle,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          introScreenModel.getDescription,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll<Color>(Colors.white),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            ),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        child: Text(
                          "LOG IN",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 7.0,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            ),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          side: WidgetStateProperty.all(
                            const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
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
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
