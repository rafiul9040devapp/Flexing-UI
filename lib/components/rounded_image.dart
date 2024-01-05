import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedImage extends StatelessWidget {
  final String imageLink;
  final double? innerRadius;
  final double? outerRadius;

  const RoundedImage(
      {super.key, required this.imageLink, this.innerRadius, this.outerRadius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white10,
      radius: innerRadius ?? 95.r,
      child: CircleAvatar(
        backgroundImage: AssetImage(imageLink),
        radius: outerRadius ?? 90.r,
      ),
    );
  }
}
