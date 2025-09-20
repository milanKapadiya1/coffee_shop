import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            // Image + Text overlay
            SizedBox(
              height: size.height * 0.5, // Half screen for image
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none, // 🔑 allow overflow
                children: [
                  // Background Image
                  Image.asset(
                    'assets/images/onboarding.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // Text at bottom (will overflow)
                  Positioned(
                    bottom: -40, // move outside image
                    left: 20,
                    right: 20,
                    child: Text(
                      'Fall in Love with Coffee in Blissful Delight!',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'sora',
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Extra space below
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
