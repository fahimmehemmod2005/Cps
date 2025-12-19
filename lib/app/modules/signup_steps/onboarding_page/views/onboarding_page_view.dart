import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends GetView<OnboardingPageController> {
  const OnboardingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold();
  }
}
