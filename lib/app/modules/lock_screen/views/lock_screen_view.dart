import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lock_screen_controller.dart';

class LockScreenView extends GetView<LockScreenController> {
  const LockScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LockScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LockScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
