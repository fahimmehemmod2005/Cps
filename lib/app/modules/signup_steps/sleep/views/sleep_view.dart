// ==================== SLEEP VIEW ====================
// File: sleep_view.dart

import 'package:cps/app/modules/signup_steps/onboarding_page/controllers/onboarding_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SleepView extends GetView<OnboardingPageController> {
  const SleepView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "How many hours do you usually sleep?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Select sleep hours.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 60),

          Expanded(
            child: Center(
              child: Obx(() {
                return SizedBox(
                  height: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Hour picker
                      SizedBox(
                        width: 80,
                        child: ListWheelScrollView.useDelegate(
                          controller: FixedExtentScrollController(
                            initialItem: controller.selectedSleepHours.value - 4,
                          ),
                          itemExtent: 60,
                          diameterRatio: 1.5,
                          physics: const FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index) {
                            controller.selectedSleepHours.value = index + 4;
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 10,
                            builder: (context, index) {
                              final hour = (index + 4).toString().padLeft(2, '0');
                              final isSelected = controller.selectedSleepHours.value == index + 4;
                              return Center(
                                child: Text(
                                  hour,
                                  style: TextStyle(
                                    fontSize: isSelected ? 36 : 24,
                                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                    color: isSelected ? const Color(0xFF1A1A1A) : Colors.grey[400],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'hr',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}