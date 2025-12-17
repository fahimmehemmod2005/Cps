import 'package:cps/app/modules/lock_screen/controllers/checkbox_controller.dart';
import 'package:cps/app/modules/lock_screen/controllers/lock_screen_controller.dart';
import 'package:cps/app/modules/lock_screen/views/lock_screen_view.dart';
import 'package:cps/app/modules/lock_screen/widgets/custom_checkbox.dart';
import 'package:cps/app/modules/lock_screen/widgets/custom_rich_text.dart';
import 'package:cps/app/modules/signup_screen/controllers/date_of_birth_controller.dart';
import 'package:cps/app/modules/signup_screen/widgets/custom_input_field_two.dart';
import 'package:cps/app/modules/signup_screen/widgets/date_time_picker.dart';
import 'package:cps/app/modules/welcome_offer_screen/views/welcome_offer_screen_view.dart';
import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_button.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_social_button.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/signup_screen_controller.dart';

class SignupScreenView extends GetView<SignupScreenController> {
  const SignupScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final DateOfBirthController dobController = Get.put(
      DateOfBirthController(),
    );
    final LockScreenController passController = Get.put(LockScreenController());
    final CheckboxController checkController = Get.put(CheckboxController());

    return CustomScaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            SizedBox(height: 15.h),
        
            //___________________ Title ______________________
            Text(
              "Create an account",
              style: MyStyles.title24_600w(color: Colors.black),
            ),
        
            //___________________ sub Title ___________________________
            Text(
              "Please sign up your account",
              style: MyStyles.title14_500w(color: Colors.black54),
            ),
        
            SizedBox(height: 30.h),
        
            //__________________ name input field __________________
            CustomInputFieldTwo(
              topLabel: 'Name',
              hintText: 'Enter Full Name',
              prefixPath: MyIcons.person,
            ),
        
            SizedBox(height: 12.h),
        
            //__________________ email input field __________________
            CustomInputFieldTwo(
              topLabel: 'Email',
              hintText: 'Enter Email Address',
              prefixPath: MyIcons.email,
            ),
        
            SizedBox(height: 12.h),
        
            //__________________ date input field __________________
            DateTimePicker(dobController: dobController),
        
            SizedBox(height: 12.h),
        
            //__________________ password input field __________________
            Obx(
              () => CustomInputFieldTwo(
                topLabel: 'Password',
                hintText: 'Enter Your Password',
                prefixPath: MyIcons.finger,
                obscureText: passController.isPasswordHidden.value,
                suffixIcon: Padding(
                  padding: EdgeInsetsGeometry.all(13),
                  child: GestureDetector(
                    onTap: passController.togglePassword,
                    child: SvgPicture.asset(
                      passController.isPasswordHidden.value
                          ? MyIcons.visibilityOn
                          : MyIcons.visibilityOff,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 12.h),
        
            //__________________ confirm input field __________________
            Obx(
              () => CustomInputFieldTwo(
                topLabel: 'Confirm Password',
                hintText: 'Confirm Your Password',
                prefixPath: MyIcons.finger,
                obscureText: passController.isConfirmPasswordHidden.value,
                suffixIcon: GestureDetector(
                  onTap: passController.isConfirmPasswordHidden.toggle,
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(13),
                    child: SvgPicture.asset(
                      passController.isConfirmPasswordHidden.value
                          ? MyIcons.visibilityOn
                          : MyIcons.visibilityOff,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 12.h),
        
            //__________________ checkbox __________________
            Row(
              children: [
                GradientCheckbox(
                  value: checkController.isNotEmpty,
                  onTap: checkController.toggle,
                ),
        
                SizedBox(width: 5.w),
        
                //__________________ rich text __________________
                Custom_Rich_Text(
                  firstText: "I agree with ",
                  secondText: "terms & conditions ",
                  onTap: () {},
                  thirdText: "and ",
                  fourthText: "privacy policy",
                  onPressed: () {},
                ),
              ],
            ),
        
            SizedBox(height: 30),
        
            //__________________ custom Button __________________
            CustomGradientButton(
              buttonText: 'Sign Up',
              onTap: () {
                Get.to(
                  WelcomeOfferScreenView(),
                  transition: Transition.downToUp,
                  duration: Duration(milliseconds: 400),
                );
              },
            ),
        
            SizedBox(height: 30),
        
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
                  onPressed: () {},
                ),
        
                CustomGradientSocialButton(
                  onPressed: () {},
                  imagePath: MyIcons.apple,
                  text: 'Apple',
                ),
              ],
            ),
        
            SizedBox(height: 20.h),
        
            //___________________________ Rich Text __________________________
            Custom_Rich_Text(
              firstText: 'Already have an account? ',
              secondText: "Sign in",
              onTap: () {
               
                Get.to(
                  LockScreenView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 400)
                );
              
              },
            ),
          ],
        ),
      ),
    );
  }
}
