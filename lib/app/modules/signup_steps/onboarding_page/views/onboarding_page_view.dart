// ==================== MAIN VIEW ====================
// File: onboarding_page_view.dart

import 'package:cps/app/modules/signup_steps/goal/views/goal_view.dart';
import 'package:cps/app/modules/signup_steps/mood/views/mood_view.dart';
import 'package:cps/app/modules/signup_steps/reminder/views/reminder_view.dart';
import 'package:cps/app/modules/signup_steps/sleep/views/sleep_view.dart';
import 'package:cps/common/custom_container/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends GetView<OnboardingPageController> {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final titles = ['Current Mood', 'Wellness Goals', 'Sleep', 'Reminders'];

    return Scaffold(
      body: CustomContainer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                children: [
                  Obx(
                    () => IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF1A1A1A),
                      ),
                      onPressed: controller.currentPage.value > 0
                          ? controller.prevPage
                          : Get.back,
                    ),
                  ),
                  SizedBox(width: 75.h),
                  Obx(
                    () => Text(
                      titles[controller.currentPage.value],
                      style: const TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Progress bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Obx(
                () => LinearProgressIndicator(
                  value: (controller.currentPage.value + 1) / 4,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xFF6C3FD6),
                  ),
                  minHeight: 4,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            // Content
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffCDD6FF), Color(0xffE6D4FF)],
                  ),
                ),
                child: Obx(
                  () => IndexedStack(
                    index: controller.currentPage.value,
                    children: const [
                      MoodView(),
                      GoalView(),
                      SleepView(),
                      ReminderView(),
                    ],
                  ),
                ),
              ),
            ),

            // Next button
            Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: controller.canProceed()
                        ? controller.nextPage
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C3FD6),
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.grey[300],
                      disabledForegroundColor: Colors.grey[600],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Text(
                      controller.currentPage.value == 3 ? "Complete" : "Next",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
