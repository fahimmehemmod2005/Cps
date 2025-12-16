import 'package:get/get.dart';

import '../modules/gender_screen/bindings/gender_screen_binding.dart';
import '../modules/gender_screen/views/gender_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lock_screen/bindings/lock_screen_binding.dart';
import '../modules/lock_screen/views/lock_screen_view.dart';
import '../modules/next_terms_screen/bindings/next_terms_screen_binding.dart';
import '../modules/next_terms_screen/views/next_terms_screen_view.dart';
import '../modules/signup_screen/bindings/signup_screen_binding.dart';
import '../modules/signup_screen/views/signup_screen_view.dart';
import '../modules/signup_steps_screen/bindings/signup_steps_screen_binding.dart';
import '../modules/signup_steps_screen/views/signup_steps_screen_view.dart';
import '../modules/welcome_offer_screen/bindings/welcome_offer_screen_binding.dart';
import '../modules/welcome_offer_screen/views/welcome_offer_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGNUP_STEPS_SCREEN;

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
    GetPage(
      name: _Paths.SIGNUP_SCREEN,
      page: () => const SignupScreenView(),
      binding: SignupScreenBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_OFFER_SCREEN,
      page: () => const WelcomeOfferScreenView(),
      binding: WelcomeOfferScreenBinding(),
    ),
    GetPage(
      name: _Paths.NEXT_TERMS_SCREEN,
      page: () => const NextTermsScreenView(),
      binding: NextTermsScreenBinding(),
    ),
    GetPage(
      name: _Paths.GENDER_SCREEN,
      page: () => const GenderScreenView(),
      binding: GenderScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_STEPS_SCREEN,
      page: () => const SignupStepsScreenView(),
      binding: SignupStepsScreenBinding(),
    ),
  ];
}
