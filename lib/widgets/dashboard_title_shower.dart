import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardTitleShower extends StatelessWidget {
  const DashboardTitleShower({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 30,
        ),
        Text(
          "Dashboard",
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        ClipOval(
          child: Image.asset(
            "assets/images/man_dp.png",
            width: 45,
            height: 45,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
