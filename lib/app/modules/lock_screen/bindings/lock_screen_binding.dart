import 'package:cps/app/modules/lock_screen/controllers/checkbox_controller.dart';
import 'package:get/get.dart';

import '../controllers/lock_screen_controller.dart';

class LockScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LockScreenController>(
      () => LockScreenController());
    Get.lazyPut<CheckboxController>(
      () => CheckboxController());
  }
}
