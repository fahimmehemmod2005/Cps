import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lock_screen/bindings/lock_screen_binding.dart';
import '../modules/lock_screen/views/lock_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOCK_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOCK_SCREEN,
      page: () => const LockScreenView(),
      binding: LockScreenBinding(),
    ),
  ];
}
