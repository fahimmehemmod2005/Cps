import 'package:cps/app/modules/signup_screen/controllers/date_of_birth_controller.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({
    super.key,
    required this.dobController,
  });

  final DateOfBirthController dobController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
            'Date of Birth',
            style: MyStyles.title12_400w(color: const Color(0xff2C2C2C)),
          ),
          SizedBox(height: 5.h),
        Container(
          height: 44.h,width: 336.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r)
          ),
          child: TextFormField(
            controller: dobController.dobController,
            readOnly: true,
            onTap: dobController.pickDate,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 10.h),
              hintText: 'DD/MM/YYYY',
              hintStyle: MyStyles.title14_400w(color: Colors.black38),
              prefixIcon: Padding(
                padding: EdgeInsets.all(13.r),
                child: SvgPicture.asset(
                  MyIcons.date,
                  height: 20.h,
                  width: 20.w,
                ),
              )
            ),
          ),
        ),
      ],
    );
  }
}