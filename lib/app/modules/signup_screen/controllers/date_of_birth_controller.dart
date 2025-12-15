import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateOfBirthController extends GetxController {
  var dob = ''.obs;
  final TextEditingController dobController = TextEditingController();

  void pickDate() async {
    DateTime? picked = await showDatePicker(
      context: Get.context!,
      firstDate: DateTime(1990),
      initialDate: DateTime(2000),
      lastDate: DateTime.now()
      );

      if (picked != null) {
        String formatted = DateFormat('dd/mm/yyyy').format(picked);
        dob.value = formatted;
        dobController.text = formatted;
      }
  }

  @override
  void onClose() {
    dobController.dispose();
    super.onClose();
  }
}