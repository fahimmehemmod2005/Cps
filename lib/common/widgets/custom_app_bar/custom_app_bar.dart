import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomAppBar extends StatelessWidget {
  final String imagePath;
  final String text;
  const CustomAppBar({
    super.key, required this.imagePath, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
      alignment: AlignmentGeometry.topLeft,
      child: GestureDetector(
        onTap: () => Get.back(closeOverlays: true, canPop: true),
        child: Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(27),
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.5),
            child: SvgPicture.asset(
              imagePath,
              height: 12.25.h,
              width: 11.25.w,
            ),
          ),
        ),
      ),
    ),
        SizedBox(width: 71.w),
        Text(
          text,
          style: MyStyles.title18_700w(color: Color(0xff2C2C2C)),
        ),
      ],
    );
  }
}
