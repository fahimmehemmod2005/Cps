import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomInputField extends StatelessWidget {
  final String? topLabel, hintText;
  final String imagePath;
  const CustomInputField({
   required this.imagePath, this.topLabel, this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topLabel ?? "", style: MyStyles.title12_400w(color: Color(0xff2C2C2C)),),
        SizedBox(height: 5.h),
        Container(
          padding: const EdgeInsets.all(1), // border thickness
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff5245E5), Color(0xff9233E9)],
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // background color
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(padding: EdgeInsetsGeometry.all(13),child: SvgPicture.asset(imagePath,height: 20.h,width: 20.w)),
                hintText: hintText ?? "",
                hintStyle: MyStyles.title14_400w(color: Colors.black38),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 14.h,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}