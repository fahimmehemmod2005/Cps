import 'package:cps/app/modules/home/controllers/tab_controller.dart';
import 'package:cps/app/modules/home/views/widgets/tabs.dart';
import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/utils/pictures/icons/icons.dart';
import 'package:cps/utils/pictures/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TabsController controller = Get.put(TabsController());

    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 69.h),
          Image.asset(MyImages.helloBot),
          SizedBox(height: 30.h),

          /// 🔹 FIRST ROW
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tabs(
                  imagepath: MyIcons.journal,
                  text: 'Journaling',
                  isSelected: controller.selectedIndex.value == 0,
                  onTap: () => controller.selectTab(0),
                ),
                Tabs(
                  imagepath: MyIcons.aiCoach,
                  text: 'Ai Coach',
                  isSelected: controller.selectedIndex.value == 1,
                  onTap: () => controller.selectTab(1),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.h),

          /// 🔹 SECOND ROW
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tabs(
                  imagepath: MyIcons.faith,
                  text: 'Faith Support',
                  isSelected: controller.selectedIndex.value == 2,
                  onTap: () => controller.selectTab(2),
                ),
                Tabs(
                  imagepath: MyIcons.home,
                  text: 'Home',
                  isSelected: controller.selectedIndex.value == 3,
                  onTap: () => controller.selectTab(3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
