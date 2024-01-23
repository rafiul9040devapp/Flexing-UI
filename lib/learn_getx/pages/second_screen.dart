import 'package:flexing/learn_getx/widgets/custome_button.dart';
import 'package:flexing/learn_getx/controller/tap_controller_for_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TapControllerForX controllerForX = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25.sp,
          ),
        ),
        title: Text(
          'Second Screen',
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
            CustomButton('Decrement X', () => Get.find<TapControllerForX>().decrementX()),
          ],
        ),
      ),
    );
  }
}
