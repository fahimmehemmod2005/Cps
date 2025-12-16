import 'package:get/get.dart';

import '../controllers/welcome_offer_screen_controller.dart';

class WelcomeOfferScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeOfferScreenController>(
      () => WelcomeOfferScreenController(),
    );
  }
}
