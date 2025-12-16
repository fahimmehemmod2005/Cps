import 'package:get/get.dart';

import '../controllers/signup_steps_screen_controller.dart';

class SignupStepsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupStepsScreenController>(
      () => SignupStepsScreenController(),
    );
  }
}
