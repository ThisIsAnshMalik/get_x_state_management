import 'package:get/get.dart';

class FavirateController extends GetxController {
  RxList fruits = ["apple", "mango", "Bannana", "santra"].obs;
  RxList favirate = [].obs;

  void setFavirate(value) {
    favirate.add(value);
  }

  void removeFavirate(value) {
    favirate.remove(value);
  }
}
