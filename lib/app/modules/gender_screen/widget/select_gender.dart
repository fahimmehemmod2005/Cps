import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectGender extends StatelessWidget {
  final String text;
  final String imagePath;
  final Color gradientFirst;
  final Color gradientSecond;
  final VoidCallback onPressed;

  const SelectGender({
    super.key,
    required this.text,
    required this.imagePath,
    required this.gradientFirst,
    required this.gradientSecond, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, height: 78.4.h, width: 78.4.w),
        SizedBox(height: 20.h),
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 31.h,
            width: 101.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [gradientFirst, gradientSecond]),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Center(
              child: Text(
                text,
                style: MyStyles.title14_700w(color: Color(0xffFAFAFA)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}