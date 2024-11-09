import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/views/screens/splash_screen.dart';

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
        color: AppColors.whiteColor,
        debugShowCheckedModeBanner: false,
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
