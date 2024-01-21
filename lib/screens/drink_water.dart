import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../model/water_consumption.dart';

class DrinkWaterScreen extends StatefulWidget {
  const DrinkWaterScreen({super.key});

  @override
  State<DrinkWaterScreen> createState() => _DrinkWaterScreenState();
}

class _DrinkWaterScreenState extends State<DrinkWaterScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _noOfGlassesTEController =
        TextEditingController(text: '1');
    final TextEditingController _noteTEController =
        TextEditingController(text: 'Morning');
    List<WaterConsumption> _waterConsumptionList = [];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Drink Water',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.purpleAccent.shade100,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.w),
              child: InkWell(
                borderRadius: BorderRadius.circular(100.r),
                onTap: () {

                },
                child: Container(
                  height: 150.h,
                  width: 150.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent.shade100,
                    borderRadius: BorderRadius.circular(100.r),
                    border:
                        Border.all(color: Colors.deepOrangeAccent, width: 2.w),
                  ),
                  child: Text(
                    'Tap To Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50.w,
                  child: TextField(
                    controller: _noOfGlassesTEController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                  ),
                ),
                15.horizontalSpace,
                SizedBox(
                  width: 100.w,
                  child: TextField(
                    controller: _noteTEController,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: _waterConsumptionList.length,
              itemBuilder: (context, index) {
                final item = _waterConsumptionList[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20.r,
                    child: Text(
                      item.noOfGlasses.toString(),
                      style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.w200,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  title: Text(
                    item.note,
                    style: TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.w200,
                      fontSize: 18.sp,
                    ),
                  ),
                  subtitle: Text(
                    DateFormat.yMEd().add_jms().format(item.time),
                    style: TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.w200,
                      fontSize: 18.sp,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
