import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardNameShower extends StatelessWidget {
  const DashboardNameShower({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Text(
              "Welcome,",
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 100, 17, 22),
              ),
            ),
            const Spacer(),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Text(
              "$userName!",
              style: GoogleFonts.lato(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const Spacer(),
          ],
        )
      ],
    );
  }
}
