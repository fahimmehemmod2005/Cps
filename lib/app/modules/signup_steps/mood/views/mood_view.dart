import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mood_controller.dart';

class MoodView extends GetView<MoodController> {
  const MoodView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoodView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MoodView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
