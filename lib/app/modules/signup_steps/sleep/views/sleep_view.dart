import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sleep_controller.dart';

class SleepView extends GetView<SleepController> {
  const SleepView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SleepView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SleepView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
