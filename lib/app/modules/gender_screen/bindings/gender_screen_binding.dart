import 'package:get/get.dart';

import '../controllers/gender_screen_controller.dart';

class GenderScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenderScreenController>(
      () => GenderScreenController(),
    );
  }
}
