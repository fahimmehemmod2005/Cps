import 'package:get/get.dart';

import '../controllers/next_terms_screen_controller.dart';

class NextTermsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NextTermsScreenController>(
      () => NextTermsScreenController(),
    );
  }
}
