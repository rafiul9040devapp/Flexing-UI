import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialList extends StatelessWidget {
  const SpecialList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Wheel Scroll View',
          style: TextStyle(
              color: Colors.white12,
              fontSize: 25.sp,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
    );
  }
}
