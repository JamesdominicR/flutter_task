import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/colors.dart';

import 'package:flutter_task/view/splash/splash_screen1.dart';
import 'package:flutter_task/view/splash/splash_screen2.dart';
import 'package:flutter_task/view/splash/splash_screen3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(children: [
          SplashScreen1(
            pageController: _pageController,
          ),
          const SplashScreen2(),
          SplashScreen3(pageController: _pageController)
        ]),
        Positioned(
          left: 10.w,
          top: 690.h,
          child: Container(
            height: 12.h,
            width: 10.w,
            decoration: BoxDecoration(
                color: kbuttonColor, borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
