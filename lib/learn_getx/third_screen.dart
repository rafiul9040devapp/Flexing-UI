import 'package:flexing/learn_getx/custome_button.dart';
import 'package:flexing/learn_getx/fourth_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
            CustomButton(
              'Go To The Next Page',
              () => Get.off(() => FourthPage()),
            )
          ],
        ),
      ),
    );
  }
}
