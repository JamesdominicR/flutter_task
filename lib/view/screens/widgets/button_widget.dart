
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key,required this.title,required this.onpressed}) : super(key: key);
final String title;
final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kblueColors,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 150.w,vertical: 15.h),
      ),
     child: Text(title,
      style: TextStyle(
        fontSize: 14.sp,
      ),
      ),
      onPressed: onpressed,
    );
    
  }
}