import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key, required this.name, required this.imageUrl});

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385,
      height: 160,
      margin: const EdgeInsets.only(
        top: 25,
      ),
      padding: const EdgeInsets.only(
        top: 100,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.only(
          top: 0,
          left: 32,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(0, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
