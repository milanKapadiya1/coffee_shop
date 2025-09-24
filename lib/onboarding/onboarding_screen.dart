import 'package:coffeeshop/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none, //  overflow outside
              children: [
                Image.asset(
                  'assets/images/onboarding.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -40, // half text on image, half outside
                  left: 20,
                  right: 20,
                  child: Text(
                    'Fall in Love with Coffee in Blissful Delight!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'sora',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC67C4E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'sora',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
