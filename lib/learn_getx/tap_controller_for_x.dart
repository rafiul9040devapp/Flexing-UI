import 'package:get/get.dart';

class TapControllerForX extends GetxController{
  int _x = 0;
  int get x => _x;

  void incrementX(){
    _x++;
    update();
  }
  void decrementX(){
    _x--;
    update();
  }
}