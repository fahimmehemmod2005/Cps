import 'package:cps/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

class BotHelloController extends GetxController {
  //TODO: Implement SplashController
  final count = 0.obs;
  @override
  void onInit() {
    jumpToNextPage();
    super.onInit();
  }

  jumpToNextPage() {
    Future.delayed(
      Duration(seconds: 3),
      () => Get.offAll(
        HomeView(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 400),
      ),
    );
  }
}
