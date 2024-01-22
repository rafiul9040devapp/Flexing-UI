import 'package:get/get.dart';

class TapControllerForY extends GetxController{
  final RxInt _y = 0.obs;
  RxInt get y => _y;
  void incrementY(){
    _y.value++;
  }
  void decrementY(){
    _y.value--;
  }
}