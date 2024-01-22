import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const CustomButton(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.r),
        onTap: onPressed,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.greenAccent.shade200,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
