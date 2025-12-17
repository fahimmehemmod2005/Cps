import 'package:cps/app/modules/select_country_screen/controllers/select_country_screen_controller.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CountryFindField extends StatelessWidget {
  const CountryFindField({
    super.key,
    required this.controller,
  });

  final SelectCountryScreenController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: controller.searchCountry,
      decoration: InputDecoration(
        hintText: 'Find your country',
        hintStyle: MyStyles.title14_400w(color: Colors.black54),
        prefixIcon: Padding(
          padding: const EdgeInsetsGeometry.all(12),
          child: SvgPicture.asset(
            MyIcons.search,
            height: 15.h,
            width: 15.w,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.h),
      ),
    );
  }
}