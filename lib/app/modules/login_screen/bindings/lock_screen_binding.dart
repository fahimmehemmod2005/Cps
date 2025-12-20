import 'package:get/get.dart';

import '../controllers/checkbox_controller.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController());
    Get.lazyPut<CheckboxController>(
      () => CheckboxController());
  }
}
