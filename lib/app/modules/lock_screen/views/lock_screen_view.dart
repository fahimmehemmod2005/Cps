import 'package:cps/app/modules/lock_screen/controllers/checkbox_controller.dart';
import 'package:cps/app/modules/lock_screen/widgets/custom_checkbox.dart';
import 'package:cps/app/modules/lock_screen/widgets/custom_rich_text.dart';
import 'package:cps/app/routes/app_pages.dart';
import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_button.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_social_button.dart';
import 'package:cps/common/widgets/custom_input_field/cusotm_input_field.dart';
import 'package:cps/common/widgets/custom_svg/custom_svg.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/sizes/sizes.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/lock_screen_controller.dart';

class LockScreenView extends GetView<LockScreenController> {
  const LockScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final CheckboxController checkController = Get.put(CheckboxController());
    final LockScreenController textController = Get.put(LockScreenController());

    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MySizes.topSafeArea,
          SizedBox(height: 45.h),

          //_______________ Robot Logo ______________________
          CustomSvgPicture(
            assetName: MyIcons.robot,
            height: 138.93.h,
            width: 107.66.w,
          ),

          SizedBox(height: 5.h),

          //_________________ Title _______________________
          Text(
            'Welcome Back!',
            style: MyStyles.title24_600w(color: Color(0xff2C2C2C)),
          ),

          //_________________ Sub Title _____________________
          Text(
            'Login to your account',
            style: MyStyles.title14_500w(color: Colors.black54),
          ),

          SizedBox(height: 30.h),

          //____________________ Email Input Field __________________
          CustomInputField(
            controller: textController.email,
            prefixPath: MyIcons.email,
            hintText: "Enter Email Address",
            topLabel: "Email",
          ),

          SizedBox(height: 20.h),

          //_______________________ Password Input Field ___________________
          CustomInputField(
            controller: textController.password,
            prefixPath: MyIcons.finger,
            suffixPath: MyIcons.visibilityOn,
            hintText: "Enter Email Password",
            topLabel: "Password",
            obscureText: true,
          ),

          SizedBox(height: 40.h),

          Row(
            children: [
              //______________________ Checkbox _________________________
              GradientCheckbox(
                value: checkController.isNotEmpty,
                onTap: checkController.toggle,
              ),

              SizedBox(width: 5.w),

              // __________________________ Remember me ___________________
              Text(
                "Remember Me",
                style: MyStyles.title12_400w(color: Color(0xff2C2C2C)),
              ),

              Spacer(),

              //_________________________ forgot password button __________________
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot Password",
                  style: MyStyles.title12_400w(color: Color(0xff2C2C2C)),
                ),
              ),
            ],
          ),

          SizedBox(height: 30.h),

          //______________________ Sign In button ___________________________
          CustomGradientButton(
            buttonText: "Sign In",
            onTap: () {
              Get.toNamed(Routes.HOME);
            },
          ),

          SizedBox(height: 30.h),

          //________________________ OR ______________________________________
          Row(
            children: [
              Expanded(child: Divider(color: Colors.white, thickness: 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('OR', style: TextStyle(color: Color(0xff4F46E5))),
              ),
              Expanded(child: Divider(color: Colors.white, thickness: 1)),
            ],
          ),

          SizedBox(height: 30.h),

          //____________________ Social Button _________________________
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomGradientSocialButton(
                imagePath: MyIcons.google,
                text: 'Google',
              ),
              CustomGradientSocialButton(
                imagePath: MyIcons.apple,
                text: 'Apple',
              ),
            ],
          ),

          SizedBox(height: 20.h),

          //__________________ signup rich text ______________________
          Custom_Rich_Text(
            firstText: "Don't have an accout? ",
            secondText: "Sign Up",
            onTap: () {},
          ),
          SizedBox(height: 49.07.h),
          MySizes.bottomSafeArea,
        ],
      ),
    );
  }
}
