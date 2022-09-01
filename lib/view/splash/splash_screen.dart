import 'package:flutter/material.dart';

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
    return PageView(children: [
      SplashScreen1(
        pageController: _pageController,
      ),
      SplashScreen2(pageController: _pageController),
      SplashScreen3(pageController: _pageController)
    ]);
  }
}
