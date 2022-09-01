import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/view/splash/splash_screen2.dart';
import 'package:get/get.dart';
import '../../core/colors.dart';
import '../../core/constants.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Skip'),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                OnboardingWidget(
                  title: 'Order Your Food',
                  description:
                      'Now you can order food any time\n right from your mobile.',
                  image: 'assets/images/img_1.png',
                  pageController: pageController,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kbuttonColor,
        onPressed: () {
          Get.to(SplashScreen2(pageController: pageController,));
        },
        child: const Text('Next'),
      ),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.pageController,
  }) : super(key: key);
  final String title;
  final String description;
  final String image;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight50,
        Text(title, style: kstyleTitle),
        kheight20,
        Text(
          description,
          style: kstyletDesc,
        ),
        kheight5,
        Image.asset(
          image,
          height: 400.h,
          width: 400.w,
        ),
        kheight10,
      ],
    );
  }
}
