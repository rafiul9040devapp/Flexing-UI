import 'package:get/get.dart';

class TapControllerForZ extends GetxController {
  RxInt total = 0.obs;

  int getTotal(int x, int y) {
    return total.value = x + y;
  }
}
