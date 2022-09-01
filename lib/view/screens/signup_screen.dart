import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controller/signin_controller.dart';
import 'package:flutter_task/core/colors.dart';
import 'package:flutter_task/core/constants.dart';
import 'package:flutter_task/view/screens/widgets/button_widget.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
final _namecontroller = TextEditingController();
final _PhoneNumberontroller = TextEditingController();
final _emailcontroller = TextEditingController();
final _passwordController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final controller = Get.put(SigninController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
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
                      )
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 65.h),
                      Container(
                        height: 595.h,
                        width: 393.w,
                        decoration: const BoxDecoration(
                          color: kashColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                        ),
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
                                    child: Text('Create Account',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600
                                    ),
                                    ),
                                  ),
                                  kheight20,
                                  const Text('Full Name'),
                                  kheight5,
                                  TextFormField(
                              style: const TextStyle(color: Colors.green),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: 'Full Name',
                                      prefixIcon: const Icon(Icons.person),
                                    ),
                                   controller: _namecontroller,
                                    ),   
                                    kheight10,
                                    const Text('Phone Number'),
                                    kheight5,
                                    TextFormField(
                              style: const TextStyle(color: Colors.green),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: 'Phone Number',
                                      prefixIcon: const Icon(Icons.phone),
                                    ),
                                    controller: _PhoneNumberontroller,
                                    ),
                                    kheight10,
                                    const Text('Email Address'),
                                    kheight5,
                                    TextFormField(
                              style: const TextStyle(color: Colors.green),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: 'Email Address',
                                      prefixIcon: const Icon(Icons.email),
                                    ),
                                    controller: _emailcontroller,
                                    ),  
                                    kheight10,
                                    const Text('Password'),
                                    kheight5,
                                    TextFormField(
                              style: const TextStyle(color: Colors.green),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: 'Password',
                                      prefixIcon: const Icon(Icons.lock),
                                    ),
                                     controller: _passwordController,
                                    ),  
                                    SizedBox(height: 30.h),
                                    ButtonWidget(title: 'Sign Up', 
                                    onpressed: () {
                                    if(_namecontroller.text.isEmpty || _PhoneNumberontroller.text.isEmpty || _emailcontroller.text.isEmpty || _passwordController.text.isEmpty){
                                       Get.snackbar(
                                          'Error',
                                          'Every Field Required',
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.red,
                                        );
                                    } else {
                                      controller.userRegister(_namecontroller.text.trim(), _PhoneNumberontroller.text.trim(), _emailcontroller.text.trim(), _passwordController.text.trim());
                                    }
                                    },
                                    ),
                                   SizedBox(height: 40.h),
                                     Align(
                                      alignment: Alignment.center,
                                       child: RichText(
                                        text: TextSpan(
                                            text: 'I\'m already a member? ',
                                            style: TextStyle(
                                              color: const Color(0xff0E3746),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                             children: [
                                              TextSpan(
                                                text: ' Sign In',
                                                style: TextStyle(
                                                  color: kblueColors,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                recognizer: TapGestureRecognizer()..onTap = () {
                                                 //page routing
                                                }
                                              ),
                                            ]
                                        ),   
                                                                 ),
                                     ),
                                
                                 ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
            ],
          ),
        ), 
      ),
    );
    
  }
}