import 'package:cps/common/custom_scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_country_screen_controller.dart';

class SelectCountryScreenView extends GetView<SelectCountryScreenController> {
  const SelectCountryScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold();
  }
}
