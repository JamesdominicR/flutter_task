import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/view/screens/welcome_screen.dart';
import 'package:flutter_task/view/splash/splash_screen1.dart';
import 'package:get/get.dart';
import '../../core/colors.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({Key? key,required this.pageController}) : super(key: key);
 final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.chevron_left,
        color: kwhite,
        size: 30.sp,
        ),
        actions: [
           TextButton(
          onPressed: () {},
          child: const Text('Skip'),
         ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
            OnboardingWidget(title: 'Quick Delivery', 
            description: 'Orders your favourite meals will\nbe immediately deliver.', 
            image: 'assets/images/img_3.png', 
            pageController: pageController),
            ],
          ),
        ),
      ),
       floatingActionButton: FloatingActionButton(
                        backgroundColor: kbuttonColor,
                        onPressed: () {
                          Get.to(const WelcomeScreen());
                        },
                        child: const Text('Start'),
                        ),
    );
    
  }
}