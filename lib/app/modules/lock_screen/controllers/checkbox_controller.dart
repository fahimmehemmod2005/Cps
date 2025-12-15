import 'package:get/state_manager.dart';

class CheckboxController extends GetxController{
  RxBool isNotEmpty = false.obs;

  void toggle(){
    isNotEmpty.value = !isNotEmpty.value;
  }
}