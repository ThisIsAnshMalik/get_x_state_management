import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool notification = false.obs;

  void setNotifaction(value) {
    notification.value = value;
  }
}
