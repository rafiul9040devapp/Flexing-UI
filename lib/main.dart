import 'package:flexing/learn_getx/pages/start_screen.dart';
import 'package:flexing/screens/drink_water.dart';
import 'package:flexing/screens/home_screen.dart';
import 'package:flexing/screens/product_screen.dart';
import 'package:flexing/screens/special_list.dart';
import 'package:flexing/screens/watch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'learn_getx/helper/init_controller.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
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
          initialRoute: '/',
          theme: ThemeData(
              useMaterial3: true,
              appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent.shade100),
              colorScheme: const ColorScheme.light(
                  background: Colors.white, onPrimary: Colors.purple)),
          home: child,
        );
      },
      child:  StartScreen(),
    );
  }
}
