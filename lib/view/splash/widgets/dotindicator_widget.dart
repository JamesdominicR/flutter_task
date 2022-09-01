import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/colors.dart';

class DotindicatorWidget extends StatelessWidget {
  const DotindicatorWidget({Key? key, this.isActive = false}) : super(key: key);
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 10.h,
      decoration: BoxDecoration(
       color: kbuttonColor,
        borderRadius: BorderRadius.circular(12)
      ),
    );
    
  }
}