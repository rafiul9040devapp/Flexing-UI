import 'package:flexing/components/greeting.dart';
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
      body: const SafeArea(
        child: Column(
          children: [
            Greeting(),
           Year()
          ],
        ),
      ),
    );
  }
}
