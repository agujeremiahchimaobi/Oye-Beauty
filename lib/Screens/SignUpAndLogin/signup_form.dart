import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/reusable_widgets.dart';
import '../Profile/blank_profile.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: Color(0xff442E61),
                  size: 25,
                ),
                const SizedBox(width: 15),
                Text(
                  'Profile Info',
                  style: GoogleFonts.mulish(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff442E61),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const ProfileInfoWidget(
              label: 'Name',
              hint: 'Enter your name',
            ),
            const SizedBox(height: 15),
            const ProfileInfoWidget(
              label: 'Email',
              hint: 'Enter your email (optional)',
            ),
            const SizedBox(height: 15),
            const ProfileInfoWidget(
              label: 'Choose your state',
              hint: 'Enter the city you operate on',
            ),
            const SizedBox(height: 15),
            const ProfileInfoWidget(
              label: 'Service City',
              hint: 'Enter the city you operate on',
            ),
            const SizedBox(height: 15),
            const ProfileInfoWidget(
              label: 'Current Location',
              hint: 'Click here for current location',
              suffixIcon: ImageIcon(
                AssetImage('images/location.png'),
              ),
            ),
            const SizedBox(height: 50),
            CustomShortBtn(
              text: 'Continue',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
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
