import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dasher/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return MaterialApp(
        home: ScreenUtilInit(
            minTextAdapt: true,
            splitScreenMode: true,
            designSize: Size(
              mediaQuerySize.width,
              mediaQuerySize.height,
            ),
            child: const SplashScreen()));
  }
}
