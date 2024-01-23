import 'package:flexing/learn_getx/widgets/custome_button.dart';
import 'package:flexing/learn_getx/pages/second_screen.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_x.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_y.dart';
import 'package:flexing/learn_getx/pages/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  final TapControllerForX controllerForX = Get.put(TapControllerForX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Start Screen',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent.shade100,
        centerTitle: true,
        titleSpacing: 1.5.w,
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<TapControllerForX>(
              builder: (_) {
                return CustomButton(controllerForX.x.toString(), () => null);
              },
            ),
            CustomButton('Increase X', () => controllerForX.incrementX()),
            CustomButton('Go To Next Page ', () => Get.to(()=> const SecondScreen())),
            CustomButton('Go to Third Page', () => Get.off(()=> ThirdScreen())),
            CustomButton('TAP', () => null),
          ],
        ),
      ),
    );
  }
}
