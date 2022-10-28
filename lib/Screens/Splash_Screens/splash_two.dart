import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({super.key});

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Beauty Trainer, Book Now',
              style: GoogleFonts.mulish(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff442E61),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Learn start to end beauty course and be \nprofessional artist',
              style: GoogleFonts.mulish(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff442E61),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'images/splash1.png',
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
