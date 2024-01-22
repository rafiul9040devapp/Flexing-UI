import 'package:flexing/learn_getx/start_screen.dart';
import 'package:flexing/learn_getx/tap_controller_for_x.dart';
import 'package:flexing/learn_getx/tap_controller_for_y.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custome_button.dart';

class FourthPage extends StatelessWidget {
   FourthPage({super.key});
  final TapControllerForY controllerForY = Get.put(TapControllerForY());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(Get.find<TapControllerForX>().x.toString(), () => Get.offAll(()=>StartScreen())),
            Obx(() => CustomButton(controllerForY.y.value.toString(), () => null)),
            CustomButton('Increment Y', () => controllerForY.incrementY()),
          ],
        ),
      ),
    );
  }
}
