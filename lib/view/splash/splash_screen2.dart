import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/colors.dart';
import 'package:flutter_task/core/constants.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.chevron_left,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kheight20,
            Image.asset(
              'assets/images/img_2.png',
              height: 400.h,
              width: 400.w,
            ),
            kheight10,
            Text(
              'Cooking Safe Food',
              style: kstyleTitle,
            ),
            kheight20,
            Text(
              'We are maintain safty and we keep\nclean while making food.',
              style: kstyletDesc,
            ),
            kheight20,
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kbuttonColor,
        onPressed: () {},
        child: const Text('Next'),
      ),
    );
  }
}
