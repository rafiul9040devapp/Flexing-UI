import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SpecialList extends StatefulWidget {
  const SpecialList({super.key});

  @override
  State<SpecialList> createState() => _SpecialListState();
}

class _SpecialListState extends State<SpecialList> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Wheel Scroll View',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25.sp,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blueAccent.shade100,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent.shade100,
        child: Icon(Icons.arrow_forward,color: Colors.white,size: 25.w,),
        onPressed: () {
          final nextIndex = _controller.selectedItem + 1;
          _controller.animateToItem(
            nextIndex,
            duration: const Duration(seconds: 2),
            curve: Curves.bounceInOut,
          );
        },
      ),
      body: ListWheelScrollView.useDelegate(
        itemExtent: 250.h,
        controller: _controller,
        physics: const FixedExtentScrollPhysics(),
        perspective: .003,
        diameterRatio: 1.5,
        //squeeze: 0.5.w,
        // magnification: 1.5,
        // useMagnifier: true,
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 10,
          builder: (context, index) => buildCard(index),
        ),
      ),
    );
  }

  Widget buildCard(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      child: Card(
        color: Colors.blueAccent.shade100,
        elevation: 2,
        shadowColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Center(
          child: Text(
            'Item ${index + 1}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
