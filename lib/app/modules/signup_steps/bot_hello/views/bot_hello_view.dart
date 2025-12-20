import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:cps/utils/pictures/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/bot_hello_controller.dart';

class BotHello extends GetView<BotHelloController> {
  const BotHello({super.key});
  @override
  Widget build(BuildContext context) {
    final BotHelloController controller = Get.find<BotHelloController>();
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 191.h,),
          Image.asset(MyImages.helloBot),
          SizedBox(height: 194.h,),
          Text('© 2025 VoiceMind LLC. All Rights Reserved.',style: TextStyle(color: Colors.black38,fontSize: 14.sp,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
