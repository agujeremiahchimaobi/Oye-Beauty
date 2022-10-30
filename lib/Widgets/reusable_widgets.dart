import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    Key? key,
    this.label,
    this.hint,
    this.suffixIcon,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final dynamic suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              label!,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xff442E61),
              ),
            ),
          ),
          const SizedBox(height: 9),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffF2F3F7),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                border: InputBorder.none,
                hintText: hint,
                hintStyle: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xffA1A4B2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShortBtn extends StatelessWidget {
  const CustomShortBtn({
    Key? key,
    required this.text,
    this.ontap,
  }) : super(key: key);

  final String text;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff88609F),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingItems extends StatelessWidget {
  const OnboardingItems({
    Key? key,
    this.text,
    this.number,
    this.color,
    this.ontap,
  }) : super(key: key);

  final String? text;
  final String? number;
  final dynamic color;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 16,
              child: Text(
                number!,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Text(
              text!,
              style: GoogleFonts.mulish(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff442E61),
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}

class ProfileLabel extends StatelessWidget {
  const ProfileLabel({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: const Color(0xff442E61),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    Key? key,
    this.hint,
    this.prefix,
  }) : super(key: key);
  final String? hint;
  final dynamic prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefix,
          hintText: hint!,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
