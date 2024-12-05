import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 26,
                right: 26,
              ),
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
                bottom: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(191, 255, 207, 60),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    25,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Log In",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromARGB(255, 48, 48, 48),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromARGB(255, 48, 48, 48),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Color.fromARGB(255, 100, 17, 22),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll<Color>(
                          Color.fromARGB(255, 100, 17, 22)),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 70,
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
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 7.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Don’t have an Account? ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color.fromARGB(255, 100, 17, 22),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
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
