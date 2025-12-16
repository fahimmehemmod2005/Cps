import 'package:cps/app/modules/lock_screen/widgets/custom_rich_text.dart';
import 'package:cps/app/modules/next_terms_screen/views/next_terms_screen_view.dart';
import 'package:cps/app/modules/welcome_offer_screen/widgets/custom_features.dart';
import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/common/widgets/custom_back_button/custom_back_button.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_button.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/welcome_offer_screen_controller.dart';

class WelcomeOfferScreenView extends GetView<WelcomeOfferScreenController> {
  const WelcomeOfferScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            //________________ Back Button _______________________
            CustomBackButton(imagePath: MyIcons.cancel),
        
            SizedBox(height: 87.57.h),
        
            //__________________ Title ___________________
            Container(
              height: 28.h,
              width: 135.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff5245E5), Color(0xff9233E9)],
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Center(
                child: Text(
                  'WELCOME OFFER',
                  style: MyStyles.title14_500(color: Color(0xffFAFAFA)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
        
            //______________ sub title __________________
            Text(
              textAlign: TextAlign.center,
              "Become your\nown self-care\nhero",
              style: MyStyles.title24_700w(color: Color(0xff2C2C2C)),
            ),
        
            SizedBox(height: 60.h),
        
            //__________________ premium features __________________________
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomFeatures(text: "All Premium Monthly features"),
                  SizedBox(height: 20.h),
                  CustomFeatures(text: "Exclusive Guided Journeys"),
                  SizedBox(height: 20.h),
                  CustomFeatures(text: "Early Access to New Features"),
                  SizedBox(height: 20.h),
                  CustomFeatures(text: "Founding Member Badge"),
                ],
              ),
            ),
        
            SizedBox(height: 40.h),
        
            //__________________ Price __________________________
            Container(
              height: 78.h,
              width: 253.w,
              decoration: BoxDecoration(
                color: Color(0xFFB6A9FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Custom_Rich_Text(
                    firstText: "\$79.99 ",
                    firstStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.black38,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 1.5,
                    ),
                    secondText: "\$39.99/year",
                    secondStyle: MyStyles.title14_500(color: Color(0xff2C2C2C)),
                  ),
                  SizedBox(height: 10.h),
                  Custom_Rich_Text(
                    firstText: "Pay once, ",
                    firstStyle: MyStyles.title14_500(color: Color(0xff2C2C2C)),
                    secondText: "save 50%",
                    secondStyle: MyStyles.title14_500(color: Color(0xff2C2C2C)),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 84.h),
        
            //_______________________ Continue Buttion _______________________
            CustomGradientButton(buttonText: "Continue", onTap: () {
              Get.to(
                NextTermsScreenView(),
                transition: Transition.downToUp,
                duration: Duration(milliseconds: 400)
              );
            }),
        
          ],
        ),
      ),
    );
  }
}
