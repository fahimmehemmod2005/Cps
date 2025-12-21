import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Tabs extends StatelessWidget {
  final VoidCallback onTap;
  final String imagepath;
  final String text;
  final bool isSelected;

  const Tabs({
    super.key,
    required this.imagepath,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.r),
      onTap: onTap,
      child: Container(
        height: 156.h,
        width: 159.w,
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xFF5245E5), Color(0xFF9233E9)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isSelected ? null : Colors.white60,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagepath,
              height: 50.h,
              width: 50.w,
              color: isSelected ? Colors.white : null,
            ),
            SizedBox(height: 10.h),
            Text(
              text,
              style: MyStyles.title20_500(
                color: isSelected ? Colors.white : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
