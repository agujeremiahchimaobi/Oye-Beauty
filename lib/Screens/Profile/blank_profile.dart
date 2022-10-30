import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyebeauty/Screens/Profile/about_me.dart';

import '../../Widgets/reusable_widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Text(
              'Profile',
              style: GoogleFonts.mulish(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: const Color(0xff442E61),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  height: 155,
                  width: 360,
                  color: const Color(0xff442E61),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Image.asset(
                    'images/profile.png',
                    height: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 180),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Partner ID : 0000089456',
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Hello, Nisha',
                        style: GoogleFonts.mulish(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff442E61),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'A few steps more \nto become our Partner',
                        style: GoogleFonts.mulish(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 40, left: 30, right: 30),
                    margin: const EdgeInsets.only(top: 150),
                    height: 506,
                    width: 312,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color(0xfff9f9f9),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Onboarding Videos',
                          style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: const Color(0xff442E61),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(thickness: 1.5),
                        OnboardingItems(
                          text: 'About me',
                          number: '1',
                          color: Colors.pink,
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutMe(),
                              ),
                            );
                          },
                        ),
                        const Divider(thickness: 1.5),
                        const OnboardingItems(
                          text: 'Personal Details',
                          number: '2',
                          color: Colors.grey,
                        ),
                        const Divider(thickness: 1.5),
                        const OnboardingItems(
                          text: 'Identity Verification',
                          number: '3',
                          color: Colors.grey,
                        ),
                        const Divider(thickness: 1.5),
                        const OnboardingItems(
                          text: 'Bank details',
                          number: '4',
                          color: Colors.grey,
                        ),
                        const Divider(thickness: 1.5),
                        const OnboardingItems(
                          text: 'Service Rates',
                          number: '5',
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
