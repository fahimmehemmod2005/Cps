import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_steps_screen_controller.dart';

class SignupStepsScreenView extends GetView<SignupStepsScreenController> {
  const SignupStepsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold();
  }
}
