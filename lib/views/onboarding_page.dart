import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kcal_midterm/controllers/onboarding_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_midterm/navbar.dart';

class OnboardingPage extends StatelessWidget {
  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          PageView.builder(
              onPageChanged: controller.selectedPageIndex,
              itemCount: controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        controller.onboardingPages[index].header,
                        style: TextStyle(
                            fontFamily: 'NUDs',
                            fontSize: 25,
                            color: Color(0xff93c68b)),
                      ),
                      Image.asset(controller.onboardingPages[index].imageAsset,
                          width: 260, height: 260),
                      SizedBox(height: 25),
                      Text(
                        controller.onboardingPages[index].title,
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w600, fontSize: 20.0),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                            controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.workSans(
                                color: Colors.grey, fontSize: 18.0)),
                      ),
                    ],
                  ),
                );
              }),
          Positioned(
            bottom: 175,
            left: 180,
            child: Row(
                children: List.generate(
                    controller.onboardingPages.length,
                    (index) => Obx(() {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: 11,
                            height: 11,
                            decoration: BoxDecoration(
                              color: controller.selectedPageIndex.value == index
                                  ? Color(0xffff9386)
                                  : Color(0Xffffd3ce),
                              shape: BoxShape.circle,
                            ),
                          );
                        }))),
          ),
          Positioned(
            right: 60,
            bottom: 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Navbar()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffff9386),
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: 'NUDs',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 75,
            bottom: 30,
            child: Row(
              children: [
                Text(
                  'Already have an account?',
                  style:
                      GoogleFonts.workSans(color: Colors.grey, fontSize: 15.0),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: GoogleFonts.workSans(
                          color: Color(0xff91c789),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
