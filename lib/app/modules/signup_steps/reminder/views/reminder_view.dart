// ==================== REMINDER VIEW ====================
// File: reminder_view.dart

import 'package:cps/app/modules/signup_steps/onboarding_page/controllers/onboarding_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReminderView extends GetView<OnboardingPageController> {
  const ReminderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Preferred time of day for reminders?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Choose preferred time",
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
                        width: 60,
                        child: ListWheelScrollView.useDelegate(
                          controller: FixedExtentScrollController(
                            initialItem: controller.selectedReminderHour.value - 1,
                          ),
                          itemExtent: 50,
                          diameterRatio: 1.5,
                          physics: const FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index) {
                            controller.selectedReminderHour.value = index + 1;
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 12,
                            builder: (context, index) {
                              final hour = (index + 1).toString().padLeft(2, '0');
                              final isSelected = controller.selectedReminderHour.value == index + 1;
                              return Center(
                                child: Text(
                                  hour,
                                  style: TextStyle(
                                    fontSize: isSelected ? 28 : 20,
                                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                    color: isSelected ? const Color(0xFF1A1A1A) : Colors.grey[400],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          ':',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                      ),
                      // Minute picker
                      SizedBox(
                        width: 60,
                        child: ListWheelScrollView.useDelegate(
                          controller: FixedExtentScrollController(
                            initialItem: controller.selectedReminderMinute.value,
                          ),
                          itemExtent: 50,
                          diameterRatio: 1.5,
                          physics: const FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index) {
                            controller.selectedReminderMinute.value = index;
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 60,
                            builder: (context, index) {
                              final minute = index.toString().padLeft(2, '0');
                              final isSelected = controller.selectedReminderMinute.value == index;
                              return Center(
                                child: Text(
                                  minute,
                                  style: TextStyle(
                                    fontSize: isSelected ? 28 : 20,
                                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                    color: isSelected ? const Color(0xFF1A1A1A) : Colors.grey[400],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // AM/PM picker
                      SizedBox(
                        width: 60,
                        child: ListWheelScrollView.useDelegate(
                          controller: FixedExtentScrollController(
                            initialItem: controller.selectedReminderPeriod.value == 'AM' ? 0 : 1,
                          ),
                          itemExtent: 50,
                          diameterRatio: 1.5,
                          physics: const FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index) {
                            controller.selectedReminderPeriod.value = index == 0 ? 'AM' : 'PM';
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 2,
                            builder: (context, index) {
                              final period = index == 0 ? 'AM' : 'PM';
                              final isSelected = controller.selectedReminderPeriod.value == period;
                              return Center(
                                child: Text(
                                  period,
                                  style: TextStyle(
                                    fontSize: isSelected ? 28 : 20,
                                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                    color: isSelected ? const Color(0xFF1A1A1A) : Colors.grey[400],
                                  ),
                                ),
                              );
                            },
                          ),
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