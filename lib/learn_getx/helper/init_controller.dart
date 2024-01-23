import 'package:flexing/learn_getx/controller/list_controller.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_x.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_y.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_z.dart';
import 'package:get/get.dart';

Future<void> init() async{
  Get.lazyPut(()=>TapControllerForX());
  Get.lazyPut(()=>TapControllerForY());
  Get.lazyPut(()=>TapControllerForZ());
  Get.lazyPut(() => ListController());
}