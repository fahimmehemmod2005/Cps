import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomFeatures extends StatelessWidget {
  final String text;
  const CustomFeatures({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(MyIcons.simplification),
            SizedBox(width: 5.w),
            Text(
              text,
              style: MyStyles.title14_500(color: Color(0xff2C2C2C)),
            ),
          ],
        ),
      ],
    );
  }
}