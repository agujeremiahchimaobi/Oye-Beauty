import 'package:flutter/material.dart';
import 'package:oyebeauty/Screens/SignUpAndLogin/login/signup.dart';
import 'package:oyebeauty/Screens/Splash_Screens/splash3.dart';
import 'package:oyebeauty/Screens/Splash_Screens/splash_one.dart';
import 'package:oyebeauty/Screens/Splash_Screens/splash_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            SizedBox(
              height: 400,
              child: PageView(
                controller: _controller,
                children: const [SplashOne(), SplashTwo(), SplashThree()],
              ),
            ),
            SmoothPageIndicator(
              effect: WormEffect(
                activeDotColor: const Color(0xff442E61),
                dotColor: Colors.grey.shade300,
                dotHeight: 10,
                dotWidth: 10,
              ),
              controller: _controller,
              count: 3,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpAndLogin(),
                    ),
                  );
                },
                child: const Text('next'))
          ],
        ),
      ),
    );
  }
}
