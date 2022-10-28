import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashThree extends StatelessWidget {
  const SplashThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Online Beauty Trainer, Book Now',
              style: GoogleFonts.mulish(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff442E61),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Be a proffessional artist at home',
              style: GoogleFonts.mulish(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff442E61),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Image.asset(
              'images/curl.png',
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
