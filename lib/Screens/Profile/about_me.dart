import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/reusable_widgets.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 35),
              color: const Color(0xffE4E4E4),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, size: 20)),
                  const SizedBox(width: 10),
                  Text(
                    'About me',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff442E61),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileLabel(text: 'Mobile Number'),
                  const ProfileTextField(
                    hint: '    +91 8961326745',
                  ),
                  const SizedBox(height: 10),
                  const ProfileLabel(text: 'Alternate mobile number *'),
                  const ProfileTextField(
                    hint: 'Alternate mobile number *',
                    prefix: Icon(
                      Icons.phone_android_outlined,
                      color: Colors.pink,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ProfileLabel(text: 'Minumum order value( max ₹ 150)s'),
                  const ProfileTextField(
                    hint: '    ₹ 100',
                  ),
                  const SizedBox(height: 10),
                  const ProfileLabel(
                    text: 'Current Address',
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      SizedBox(width: 20),
                      Text('Detect Automaticallly')
                    ],
                  ),
                  const ProfileTextField(
                      hint: '    Flat/ House no./ Floor/ Building'),
                  const ProfileTextField(hint: '   Street and Landmark'),
                  const ProfileTextField(hint: '    Locality/ Area/ Sector'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ProfileLabel(text: 'City'),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 150,
                            height: 50,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Your City',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ProfileLabel(text: 'Pin Code'),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 150,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Postal Code',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const ProfileLabel(text: 'State'),
                  const ProfileTextField(hint: '   State'),
                  const SizedBox(height: 20),
                  const ProfileLabel(
                      text: 'Maximum Serviceable Distance (in KM)'),
                  const ProfileTextField(
                      hint: '   Enter serviceable distance in Kilometers'),
                  const SizedBox(height: 10),
                  const ProfileLabel(text: 'Vehicle Type'),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            color: Colors.pink,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Bicycle',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            color: Colors.pink,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Motor Cycle',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            color: Colors.pink,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Other',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const ProfileLabel(text: 'Reference Persons Name'),
                  const ProfileTextField(
                    hint: '    Write the Name',
                  ),
                  const SizedBox(height: 20),
                  const ProfileLabel(text: 'Reference mobile Name'),
                  const ProfileTextField(hint: '    Mobile Number'),
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xff88609F),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Save',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
