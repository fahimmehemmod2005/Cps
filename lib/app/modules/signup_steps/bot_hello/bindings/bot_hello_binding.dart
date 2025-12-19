import 'package:get/get.dart';

import '../controllers/bot_hello_controller.dart';

class BotHelloBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BotHelloController>(
      () => BotHelloController(),
    );
  }
}
