import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientButton extends StatelessWidget {
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onTap;
  const CustomGradientButton({
    super.key, required this.buttonText, this.textStyle, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44.h,
        width: 336.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          gradient: LinearGradient(
            colors: [Color(0xff5245E5), Color(0xff9233E9)],
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle ?? MyStyles.title14_700w(color: Color(0xFFFAFAFA)),
          ),
        ),
      ),
    );
  }
}