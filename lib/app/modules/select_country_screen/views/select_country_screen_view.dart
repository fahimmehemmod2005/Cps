import 'package:cps/app/modules/select_country_screen/widgets/country_find.dart';
import 'package:cps/common/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:cps/common/widgets/custom_back_button/custom_back_button.dart';
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCDD6FF), Color(0xffE6D4FF)],
          ),
        ),
        child: SafeArea(
          bottom: true,
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              children: [
                SizedBox(height: 3.h),
                CustomAppBar(imagePath: MyIcons.leftArrow,text: 'Select Country',),

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
                Expanded(
                  child: Obx(
                    () => ListView.builder(
                      itemCount: controller.filteredCountries.length,
                      itemBuilder: (context, index) {
                        final country = controller.filteredCountries[index];
                        return Obx(
                          () => Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color:
                                    controller
                                            .selectedCountry
                                            .value
                                            ?.countryCode ==
                                        country.countryCode
                                    ? const Color(0xFF5B5FEF)
                                    : Colors.black12,
                                width: 1.5,
                              ),
                            ),
                            child: ListTile(
                              onTap: () => controller.selectCountry(country),
                              leading: Text(
                                country.flagEmoji,
                                style: const TextStyle(fontSize: 32),
                              ),
                              title: Text(
                                country.name,
                                style: MyStyles.title14_400w(
                                  color: Colors.black54,
                                ),
                              ),
                              trailing:
                                  controller
                                          .selectedCountry
                                          .value
                                          ?.countryCode ==
                                      country.countryCode
                                  ? SizedBox(
                                      child: SvgPicture.asset(
                                        MyIcons.checkDot,
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    )
                                  : const SizedBox(width: 24, height: 24),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 4.h,
                              ),
                            ),
                          ),
                        );
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
