import 'package:cps/app/modules/login_screen/bindings/lock_screen_binding.dart';
import 'package:cps/app/modules/login_screen/views/lock_screen_view.dart';
import 'package:get/get.dart';
import '../modules/gender_screen/bindings/gender_screen_binding.dart';
import '../modules/gender_screen/views/gender_screen_view.dart';
import '../modules/signup_steps/bot_hello/bindings/bot_hello_binding.dart';
import '../modules/signup_steps/bot_hello/views/bot_hello_view.dart';
import '../modules/signup_steps/goal/bindings/goal_binding.dart';
import '../modules/signup_steps/goal/views/goal_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/signup_steps/mood/bindings/mood_binding.dart';
import '../modules/signup_steps/mood/views/mood_view.dart';
import '../modules/next_terms_screen/bindings/next_terms_screen_binding.dart';
import '../modules/next_terms_screen/views/next_terms_screen_view.dart';
import '../modules/signup_steps/onboarding_page/bindings/onboarding_page_binding.dart';
import '../modules/signup_steps/onboarding_page/views/onboarding_page_view.dart';
import '../modules/signup_steps/reminder/bindings/reminder_binding.dart';
import '../modules/signup_steps/reminder/views/reminder_view.dart';
import '../modules/select_country_screen/bindings/select_country_screen_binding.dart';
import '../modules/select_country_screen/views/select_country_screen_view.dart';
import '../modules/signup_screen/bindings/signup_screen_binding.dart';
import '../modules/signup_screen/views/signup_screen_view.dart';
import '../modules/signup_steps/sleep/bindings/sleep_binding.dart';
import '../modules/signup_steps/sleep/views/sleep_view.dart';
import '../modules/welcome_offer_screen/bindings/welcome_offer_screen_binding.dart';
import '../modules/welcome_offer_screen/views/welcome_offer_screen_view.dart';

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
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
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
      name: _Paths.BOT_HELLO,
      page: () => const BotHello(),
      binding: BotHelloBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_COUNTRY_SCREEN,
      page: () => const SelectCountryScreenView(),
      binding: SelectCountryScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE,
      page: () => const OnboardingPageView(),
      binding: OnboardingPageBinding(),
    ),
    GetPage(
      name: _Paths.MOOD,
      page: () => const MoodView(),
      binding: MoodBinding(),
    ),
    GetPage(
      name: _Paths.GOAL,
      page: () => const GoalView(),
      binding: GoalBinding(),
    ),
    GetPage(
      name: _Paths.SLEEP,
      page: () => const SleepView(),
      binding: SleepBinding(),
    ),
    GetPage(
      name: _Paths.REMINDER,
      page: () => const ReminderView(),
      binding: ReminderBinding(),
    ),
  ];
}
