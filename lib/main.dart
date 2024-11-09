import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/views/myorder_screen.dart';
import 'package:web_dasher/views/pickupscreen.dart';
import 'package:web_dasher/views/splash_screen.dart';

import 'views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return GetMaterialApp(
        home: ScreenUtilInit(
            minTextAdapt: true,
            splitScreenMode: true,
            designSize: Size(
              mediaQuerySize.width,
              mediaQuerySize.height,
            ),
            child: SplashScreen()));
  }
}
