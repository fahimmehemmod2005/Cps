import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
   final String imagePath;
  const CustomBackButton({
    super.key,
    required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}