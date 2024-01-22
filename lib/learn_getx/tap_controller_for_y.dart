import 'package:get/get.dart';

class TapControllerForY extends GetxController{
  RxInt _y = 0.obs;
  RxInt get y => _y;
  void incrementY(){
    _y++;
  }
  void decrementY(){
    _y--;
  }
}