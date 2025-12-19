// ==================== MOOD VIEW ====================
// File: mood_view.dart

import 'package:cps/app/modules/signup_steps/onboarding_page/controllers/onboarding_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoodView extends GetView<OnboardingPageController> {
  const MoodView({super.key});
  
  @override
  Widget build(BuildContext context) {
    final moods = [
      {'emoji': '😊', 'label': 'Happy'},
      {'emoji': '😌', 'label': 'Calm'},
      {'emoji': '😐', 'label': 'Neutral'},
      {'emoji': '😰', 'label': 'Stressed'},
      {'emoji': '😡', 'label': 'Angry'},
    ];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "How are you feeling today?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Select emotions and thoughts that best describe your current state",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 48),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: moods.map((mood) {
              return Obx(() {
                final isSelected = controller.selectedMood.value == mood['label'];
                return GestureDetector(
                  onTap: () => controller.selectedMood.value = mood['label']!,
                  child: Column(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSelected 
                              ? const Color(0xFF6C3FD6).withOpacity(0.1)
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            mood['emoji']!,
                            style: TextStyle(
                              fontSize: isSelected ? 32 : 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        mood['label']!,
                        style: TextStyle(
                          fontSize: 13,
                          color: isSelected ? const Color(0xFF6C3FD6) : Colors.grey[600],
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}