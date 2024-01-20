import 'package:flexing/model/watch_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key});

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Watches',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 20.sp,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 20.sp,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            Text(
              'The Collection',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.sp,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: ListWheelScrollView(
                  itemExtent: MediaQuery.sizeOf(context).height * .6,
                  diameterRatio: 3.0,
                  children: listOfWatches
                      .map(
                        (e) => Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40.h),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                color: e['color'],
                                child: SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * .5,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: Padding(
                                    padding: EdgeInsets.all(16.w),
                                    child: Column(
                                      children: [
                                        200.verticalSpace,
                                        Text(
                                          e['name'] + ' ' + e['year'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        2.verticalSpace,
                                        Text(
                                          e['material'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        15.verticalSpace,
                                        Text(
                                          e['price'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 240.h,
                              width: 240.w,
                              child: Image.asset(e['image']),
                            ),
                          ],
                        ),
                      )
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
