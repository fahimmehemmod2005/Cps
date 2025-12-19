import 'package:cps/app/modules/gender_screen/widget/select_gender.dart';
import 'package:cps/app/modules/select_country_screen/views/select_country_screen_view.dart';
import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/common/widgets/custom_back_button/custom_back_button.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/pictures/images/images.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/gender_screen_controller.dart';

class GenderScreenView extends GetView<GenderScreenController> {
  const GenderScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //_____________________ back Button _______________________
          CustomBackButton(imagePath: MyIcons.leftArrow),
      
          SizedBox(height: 212.h),
      
          //___________________ Gender Title ___________________________
          Text(
            'Your Gender?',
            style: MyStyles.title22_700(color: Color(0xff2C2C2C)),
          ),
      
          SizedBox(height: 43.h),
      
          //_______________________ Selected Gender __________________
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //_____________________ male _______________________
              SelectGender(
                text: 'Male',
                imagePath: MyImages.male,
                gradientFirst: Color(0xff9432E8),
                gradientSecond: Color(0xffD9277A),
                onPressed: () {
                  Get.to(
                    SelectCountryScreenView(),
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
      
              SizedBox(width: 50.w),
      
              // _______________________ Felmale _________________________
              SelectGender(
                text: 'Female',
                imagePath: MyImages.female,
                gradientFirst: Color(0xff5245E5),
                gradientSecond: Color(0xff9233E9),
                onPressed: () {
                  Get.to(
                    SelectCountryScreenView(),
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
