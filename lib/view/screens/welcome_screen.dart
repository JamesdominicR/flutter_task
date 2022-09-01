import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/colors.dart';
import 'package:flutter_task/core/constants.dart';
import 'package:flutter_task/view/screens/signin_screen.dart';
import 'package:flutter_task/view/screens/signup_screen.dart';
import 'package:get/get.dart';
String logged='login successfully';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 450.h,
                width: 400.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/img_4.png'),
                  )
                ),
              ),
              kheight20,
              const Text('Best Way to invest Your Money!',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              ),
              kheight20,
              ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kblueColors,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 120.w,vertical: 15.h),
      ),
     
      child: Text('Sign Up',
      style: TextStyle(
        fontSize: 14.sp,
      ),
      ),
      onPressed: () {
        Get.to(SignupScreen());
      },
    ),
    kheight10,
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 15),
      ),
     
      child: Text('Sign In',
      style: TextStyle(
        color: Colors.black,
        fontSize: 14.sp,
      ),
      ),
      onPressed: () {
        Get.to(SigninScreen());
      },
    ),

            ],
          ),
        ),
      ),
    );
    
  }
}