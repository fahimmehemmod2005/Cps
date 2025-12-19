// ==================== GOAL VIEW ====================
// File: goal_view.dart

import 'package:cps/app/modules/signup_steps/onboarding_page/controllers/onboarding_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalView extends GetView<OnboardingPageController> {
  const GoalView({super.key});
  
  @override
  Widget build(BuildContext context) {
    final goals = [
      'Journaling',
      'Spiritual Growth',
      'Meditation',
      'Fitness',
      'Anxiety',
      'Better Sleep',
    ];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What are your wildest goals?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Select one or more area improvement",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 24),

          Expanded(
            child: ListView(
              children: goals.map((goal) {
                return Obx(() {
                  final isSelected = controller.selectedGoals.contains(goal);
                  return GestureDetector(
                    onTap: () => controller.toggleGoal(goal),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelected ? const Color(0xFF6C3FD6) : Colors.black12,
                          width: 1.5,
                        ),
                        color: isSelected
                            ? const Color(0xFF6C3FD6).withOpacity(0.08)
                            : Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              goal,
                              style: TextStyle(
                                fontSize: 16,
                                color: isSelected ? const Color(0xFF6C3FD6) : Colors.black54,
                                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSelected ? const Color(0xFF6C3FD6) : Colors.grey.shade400,
                                width: 2,
                              ),
                              color: isSelected ? const Color(0xFF6C3FD6) : Colors.transparent,
                            ),
                            child: isSelected
                                ? const Icon(
                                    Icons.circle_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  );
                });
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}