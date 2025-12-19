// ==================== CONTROLLER ====================
// File: onboarding_page_controller.dart

import 'package:get/get.dart';

class OnboardingPageController extends GetxController {
  /// Page index
  var currentPage = 0.obs;

  /// Mood (single select)
  var selectedMood = ''.obs;

  /// Wellness goals (multiple select)
  var selectedGoals = <String>[].obs;

  /// Sleep hours (single value for wheel picker)
  var selectedSleepHours = 6.obs;

  /// Reminder time components
  var selectedReminderHour = 7.obs;
  var selectedReminderMinute = 20.obs;
  var selectedReminderPeriod = 'AM'.obs;

  // ================= PAGE CONTROL =================

  void nextPage() {
    if (currentPage.value < 3) {
      currentPage.value++;
    } else {
      // Navigate to next screen or complete onboarding
      completeOnboarding();
    }
  }

  void prevPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
    }
  }

  // ================= GOALS =================

  void toggleGoal(String goal) {
    if (selectedGoals.contains(goal)) {
      selectedGoals.remove(goal);
    } else {
      selectedGoals.add(goal);
    }
  }

  // ================= VALIDATION =================

  bool canProceed() {
    switch (currentPage.value) {
      case 0: // Mood
        return selectedMood.value.isNotEmpty;
      case 1: // Goals
        return selectedGoals.isNotEmpty;
      case 2: // Sleep
        return selectedSleepHours.value > 0;
      case 3: // Reminder
        return true; // Always valid
      default:
        return false;
    }
  }

  // Get formatted reminder time
  String getFormattedReminderTime() {
    final hour = selectedReminderHour.value.toString().padLeft(2, '0');
    final minute = selectedReminderMinute.value.toString().padLeft(2, '0');
    return '$hour:$minute ${selectedReminderPeriod.value}';
  }

  void completeOnboarding() {
    // Handle onboarding completion
    print('=== Onboarding Complete ===');
    print('Mood: ${selectedMood.value}');
    print('Goals: ${selectedGoals.join(", ")}');
    print('Sleep Hours: ${selectedSleepHours.value}');
    print('Reminder Time: ${getFormattedReminderTime()}');
    
    // Navigate to home screen
    // Get.offAllNamed('/home');
  }

  @override
  void onInit() {
    super.onInit();
    // Initialize with default values if needed
  }
}