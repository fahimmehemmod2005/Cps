import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomGradientSocialButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;
  const CustomGradientSocialButton({
    super.key, required this.imagePath, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 44.h,
        width: 165.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff5245E5), Color(0xff9233E9)],
          ),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.all(1),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffCDD6FF), Color(0xffE6D4FF)],
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(imagePath),
                SizedBox(width: 5.w),
                Text(text, style: TextStyle(color: Color(0xff4F46E5))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}