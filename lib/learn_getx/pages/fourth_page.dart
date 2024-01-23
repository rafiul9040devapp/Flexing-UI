import 'package:flexing/learn_getx/controller/tap_controller_for_z.dart';
import 'package:flexing/learn_getx/pages/start_screen.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_x.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_y.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custome_button.dart';

class FourthPage extends StatelessWidget {
   FourthPage({super.key});
  final TapControllerForY controllerForY = Get.put(TapControllerForY());
  final TapControllerForZ controllerForZ = Get.put(TapControllerForZ());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => CustomButton('Total: ${controllerForZ.total.value}', () => null)),
              CustomButton('X value: ${Get.find<TapControllerForX>().x}', () => Get.offAll(()=>StartScreen())),
              Obx(() => CustomButton('Y value: ${controllerForY.y.value}', () => null)),
              CustomButton('Increment Y', () => controllerForY.incrementY()),
              CustomButton('Total: X+Y', () => controllerForZ.getTotal(Get.find<TapControllerForX>().x, controllerForY.y.value)),
              CustomButton('Save To List', () => null),
            ],
          ),
        ),
      ),
    );
  }
}
