import 'package:flexing/screens/home_screen.dart';
import 'package:flexing/screens/product_screen.dart';
import 'package:flexing/screens/special_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Design Testing',
          theme: ThemeData(
              useMaterial3: true,
              appBarTheme: const AppBarTheme(backgroundColor: Colors.white24),
              colorScheme: const ColorScheme.light(
                  background: Colors.white24, onPrimary: Colors.purple)),
          home: child,
        );
      },
      child: const SpecialList(),
    );
  }
}
