import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({super.key});

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Salon, Book Now',
              style: GoogleFonts.mulish(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff442E61),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'your comforting salon appointment at your \ndoor step',
              style: GoogleFonts.mulish(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff442E61),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'images/manicure.png',
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
