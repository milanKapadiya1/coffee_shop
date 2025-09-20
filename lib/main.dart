import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView( // in case text/image is large
          child: Stack(
            clipBehavior: Clip.none, // 🔑 allow overflow outside
            children: [
              // Background Image (takes its own natural height)
              Image.asset(
                'assets/images/onboarding.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Text at the bottom edge (overlaps image + below)
              Positioned(
                bottom: -40, // half text on image, half outside
                left: 20,
                right: 20,
                child: Text(
                  'Fall in Love with Coffee in Blissful Delight!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'sora',
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
