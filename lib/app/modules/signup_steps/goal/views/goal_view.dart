import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/goal_controller.dart';

class GoalView extends GetView<GoalController> {
  const GoalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GoalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
