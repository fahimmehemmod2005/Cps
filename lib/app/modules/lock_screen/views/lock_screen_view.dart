import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/common/widgets/custom_input_field/cusotm_input_field.dart';
import 'package:cps/common/widgets/custom_svg/custom_svg.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/lock_screen_controller.dart';

class LockScreenView extends GetView<LockScreenController> {
  const LockScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45.h),
          CustomSvgPicture(assetName: MyIcons.robot,height: 138.93.h,width: 107.66.w),
          SizedBox(height: 5.h),
          Text('Welcome Back!',style: MyStyles.title24_600w(color: Color(0xff2C2C2C)),),
          Text('Login to your account',style: MyStyles.title14_500w(color: Colors.black54),),
          SizedBox(height: 30.h),
          CustomInputField(imagePath: MyIcons.email,hintText: "Enter Email Address",topLabel: "Email",),
          SizedBox(height: 20.h),
          CustomInputField(imagePath: MyIcons.finger,hintText: "Enter Email Password",topLabel: "Password",),

        ],
      ),
    );
  }
}