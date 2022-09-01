import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controller/signin_controller.dart';
import 'package:flutter_task/core/constants.dart';
import 'package:flutter_task/view/screens/widgets/button_widget.dart';
import 'package:get/get.dart';
import '../../core/colors.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);
  final controller = Get.put(SigninController());
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 300.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/img_5.png'),
                )),
              ),
              Column(
                children: [
                  SizedBox(height: 230.h),
                  Container(
                      height: 425.h,
                      width: 393.w,
                      decoration: BoxDecoration(
                          color: kashColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.w),
                              topRight: Radius.circular(15.w))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30.h),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                kheight20,
                                const Text('Email Address'),
                                kheight5,
                                TextFormField(
                                  style: const TextStyle(color: Colors.green),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'Email',
                                    prefixIcon: const Icon(Icons.email),
                                  ),
                                  controller: _emailController,
                                ),
                                kheight10,
                               const Text('Password'),
                                kheight5,
                                TextFormField(
                                  style: const TextStyle(color: Colors.green),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.w),
                                    ),
                                    hintText: 'Password',
                                    prefixIcon: const Icon(Icons.lock),
                                  ),
                                  controller: _passwordController,
                                  obscureText: true,
                                  
                                ),
                                kheight5,
                               const Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('Forgot Password?')),
                                kheight10,
                                ButtonWidget(
                                  title: 'Sign In',
                                  onpressed: () {
                                    if (_emailController.text.isEmpty ||
                                        _passwordController.text.isEmpty) {
                                       Get.snackbar(
                                          'Error',
                                          'Every Field Required',
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.red,
                                        );
                                    } else {
                                      controller.userLogin(
                                          _emailController.text.trim(),
                                          _passwordController.text.trim());
                                    }
                                  },
                                ),
                                SizedBox(height: 40.h),
                                Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'I\'m a new user? ',
                                        style: TextStyle(
                                          color: const Color(0xff0E3746),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: ' Sign Up',
                                              style: TextStyle(
                                                color: kblueColors,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  //page routing
                                                }),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
