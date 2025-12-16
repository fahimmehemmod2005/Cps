import 'package:cps/app/modules/gender_screen/views/gender_screen_view.dart';
import 'package:cps/common/widgets/custom_gradient_button/custom_gradient_button.dart';
import 'package:cps/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/next_terms_screen_controller.dart';

class NextTermsScreenView extends GetView<NextTermsScreenController> {
  const NextTermsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCDD6FF), Color(0xffE6D4FF)],
          ),
        ),
        child: SafeArea(
          bottom: true,
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 78.h),

                //__________________ Title ____________________________
                Text(
                  "Terms & Conditions and\nPrivacy Policy",
                  textAlign: TextAlign.center,
                  style: MyStyles.title20_600w(color: const Color(0xff2C2C2C)),
                ),

                SizedBox(height: 20.h),

                //__________________ Scrollable Text __________________
                Expanded(
                  child: ScrollbarTheme(
                    data: ScrollbarThemeData(
                      radius: Radius.circular(10.r),
                      thickness: MaterialStateProperty.all(5),
                      thumbColor: MaterialStateProperty.all(Colors.black),
                      trackColor: MaterialStateProperty.all(Colors.black45),
                    ),
                    child: Scrollbar(
                      thumbVisibility: true,
                      trackVisibility: true,
                      scrollbarOrientation: ScrollbarOrientation.right,
                      child: SingleChildScrollView(
                        child: Text(
                          "Lorem ipsum dolor sit amet consectetur. Vel euismod odio quam risus suspendisse. Purus tristique amet consequat proin. A in sapien turpis a massa nisi. Posuere congue convallis suspendisse ut phasellus. Dui nisi luctus venenatis metus gravida turpis hendrerit. Nulla ornare sollicitudin donec nec euismod pellentesque tortor eleifend. Convallis in sed augue sit interdum morbi. Eget nibh nunc sit vitae.Vitae aliquam amet amet cras maecenas. Aliquam tristique nunc feugiat semper eget odio.Sed adipiscing lorem eget aliquam porttitor varius semper id. Bibendum sed sit aliquet porta cras. Non integer molestie luctus nisl sed pulvinar purus egestas.Ultrices ac est praesent convallis viverra vulputate. Eros sodales lacinia gravida gravida lorem varius quam risus at. Vitae varius sapien nibh pulvinar blandit massa. Praesent nibh sem ac in. Eu arcu nunc egestas amet at. Nulla pulvinar egestas faucibus vel nullam dolor pellentesque dolor facilis. Dis mattis mauris quis a elementum pellentesque. Donec interdum sit cras velit augue sed luctus volutpat nullam. Sed purus adipiscing velit et cras sollicitudin suspendisse. Sagittis leo mauris nibh amet vel viverra.Fringilla mollis nisl tortor porttitor elit. Auctor lacus sed ac sed nam varius. Interdum sit bibendum urna at nunc netus viverra ultrices. Ut lorem non blandit condimentum neque. Risus aliquam sit faucibus amet sit aliquam sapien viverra purus. Augue aliquam sed egestas egestas feugiat semper cras aliquet sagittis. Arcu purus mauris risus amet quis odio. Semper in fermentum vitae nisl arcu sed tempus. At a at amet iaculis dictumst porta. Libero odio lacus adipiscing dolor semper commodo eros blandit. Scelerisque ut tincidunt enim tellus nisl amet diam duis aliquam. Donec sit elit turpis vitae dui nisl velit nulla. Imperdiet vulputate vestibulum tincidunt a cras. Augue bibendum morbi id hendrerit mattis platea.",
                          style: MyStyles.title14_500(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ),
                CustomGradientButton(buttonText: 'Continue', onTap: (){
                  Get.to(
                    GenderScreenView(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 400)
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}
