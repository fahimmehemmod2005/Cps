import 'package:cps/app/modules/select_country_screen/widgets/country_find.dart';
import 'package:cps/common/custom_container/custom_container.dart';
import 'package:cps/common/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_button.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/select_country_screen_controller.dart';

class SelectCountryScreenView extends GetView<SelectCountryScreenController> {
  const SelectCountryScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final SelectCountryScreenController controller = Get.put(
      SelectCountryScreenController(),
    );
    return Scaffold(
      body: CustomContainer(
        child: SafeArea(
          bottom: true,
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              children: [
                SizedBox(height: 3.h),
                CustomAppBar(
                  imagePath: MyIcons.leftArrow,
                  text: 'Select Country',
                ),

                SizedBox(height: 30.h),
                //_________________ Search Bar
                CountryFindField(controller: controller),

                SizedBox(height: 30.h),

                //_________________ All _________________
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'All',
                    style: MyStyles.title18_700w(color: Color(0xff2C2C2C)),
                  ),
                ),

                SizedBox(height: 20.h),
                //_________________ Country List _________________
                Obx(
                  () => Expanded(
                    child: ListView.builder(
                      itemCount: controller.filteredCountries.length,
                      itemBuilder: (context, index) {
                        final country = controller.filteredCountries[index];
                        return Obx(() {
                          final isSelected =
                              controller.selectedCountry.value?.countryCode ==
                              country.countryCode;
                          return GestureDetector(
                            onTap: () => controller.selectCountry(country),
                            child: Container(
                              height: 46.h,
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 12.h),
                              padding: EdgeInsets.all(
                                isSelected ? 1.5.w : 0,
                              ), // gradient border width
                              decoration: isSelected
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.r),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff5245E5),
                                          Color(0xff9233E9),
                                        ],
                                      ),
                                    )
                                  : null,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: isSelected
                                      ? null
                                      : Border.all(
                                          color: Colors.black12,
                                          width: 1.5.w,
                                        ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffCDD6FF),
                                      Color(0xffE6D4FF),
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        country.flagEmoji,
                                        style: TextStyle(fontSize: 28.sp),
                                      ),
                                      SizedBox(width: 10.w),

                                      /// Country name (NO OVERFLOW)
                                      Expanded(
                                        child: Text(
                                          country.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: MyStyles.title14_400w(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 8.w),

                                      isSelected
                                          ? SvgPicture.asset(
                                              MyIcons.checkDot,
                                              height: 20.h,
                                              width: 20.w,
                                            )
                                          : SizedBox(width: 20.w, height: 20.h),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  ),
                ),

                // ________________ Next Button _________________
                CustomGradientButton(
                  buttonText: 'Next',
                  onTap: controller.onNextPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
