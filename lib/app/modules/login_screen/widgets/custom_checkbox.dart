import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class GradientCheckbox extends StatelessWidget {
  final RxBool value;
  final VoidCallback onTap;

  const GradientCheckbox({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: onTap,
        child: Container(
          height: 16.h, width: 16.w,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff5245E5), Color(0xff9233E9)],
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: value.value
                ? SvgPicture.asset(MyIcons.check, height: 5.5, width: 8)
                : null,
          ),
        ),
      ),
    );
  }
}
