import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/common/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/signup_steps_screen_controller.dart';

class SignupStepsScreenView extends GetView<SignupStepsScreenController> {
  const SignupStepsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            CustomAppBar(
              imagePath: MyIcons.leftArrow,
              text: 'Current Mood',
            ),

            SizedBox(height: 42.h),
          ],
        ),
      ),
    );
  }
}
