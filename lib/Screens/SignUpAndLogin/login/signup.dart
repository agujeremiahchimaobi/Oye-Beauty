import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyebeauty/Screens/SignUpAndLogin/otp_page.dart';

class SignUpAndLogin extends StatefulWidget {
  const SignUpAndLogin({super.key});

  @override
  State<SignUpAndLogin> createState() => _SignUpAndLoginState();
}

class _SignUpAndLoginState extends State<SignUpAndLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Image.asset(
              'images/logo.png',
              height: 30,
            ),
            const SizedBox(height: 70),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Mobile Number'),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0xff969696),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Login / SignUp',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
