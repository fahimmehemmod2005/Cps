import 'package:get/get.dart';

import '../controllers/select_country_screen_controller.dart';

class SelectCountryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectCountryScreenController>(
      () => SelectCountryScreenController(),
    );
  }
}
