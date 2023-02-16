import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble slider = 0.4.obs;

  void setSlider(value) {
    slider.value = value;
  }
}
