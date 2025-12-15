import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomInputFieldOne extends StatelessWidget {
  final String? topLabel;
  final String? hintText;
  final String? prefixPath;
  final String? suffixPath;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;

  const CustomInputFieldOne({
    super.key,
    this.topLabel,
    this.hintText,
    this.prefixPath,
    this.suffixPath,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topLabel != null && topLabel!.isNotEmpty)
          Text(
            topLabel!,
            style: MyStyles.title12_400w(color: const Color(0xff2C2C2C)),
          ),

        if (topLabel != null && topLabel!.isNotEmpty) SizedBox(height: 5.h),

        /// Gradient Border
        Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff5245E5), Color(0xff9233E9)],
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              validator: validator,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                border: InputBorder.none,

                /// Prefix Icon
                prefixIcon: prefixPath != null
                    ? Padding(
                        padding: EdgeInsets.all(13.r),
                        child: SvgPicture.asset(
                          prefixPath!,
                          height: 20.h,
                          width: 20.w,
                        ),
                      )
                    : null,

                /// Suffix Icon
                suffixIcon: suffixPath != null
                    ? Padding(
                        padding: EdgeInsets.all(13.r),
                        child: SvgPicture.asset(
                          suffixPath!,
                          height: 20.h,
                          width: 20.w,
                        ),
                      )
                    : null,

                hintText: hintText ?? '',
                hintStyle: MyStyles.title14_400w(color: Colors.black38),
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
