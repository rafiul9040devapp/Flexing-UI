import 'package:flexing/components/greeting.dart';
import 'package:flexing/components/rounded_image.dart';
import 'package:flexing/components/year.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedImage(imageLink: 'assets/images/mountain.jpg', outerRadius: 150, innerRadius: 145,),
          ),
          Greeting(),
          Year(),
        ],
      ),
    );
  }
}
