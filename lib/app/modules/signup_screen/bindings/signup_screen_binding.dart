import 'package:cps/app/modules/signup_screen/controllers/date_of_birth_controller.dart';
import 'package:get/get.dart';

import '../controllers/signup_screen_controller.dart';

class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupScreenController>(
      () => SignupScreenController(),
    );
    Get.lazyPut<DateOfBirthController>(
      () => DateOfBirthController(),
    );
  }
}
