import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/views/on_boarding_screen.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Get.to(() => OnBoardingScreen());
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Container(
      height: mediaQuerySize.height,
      width: mediaQuerySize.width,
      color: AppColors.primaryColor,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: mediaQuerySize.height * 0.1.h, left: mediaQuerySize.height * 0.1.w, right: mediaQuerySize.height * 0.1.w),
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.contain, scale: mediaQuerySize.height * 0.0015.h, image: const AssetImage('assets/pngs/logo.png'))),
              ),
            ),
          ),
          Image.asset('assets/pngs/splash_bottom.png')
        ],
      ),
    );
  }
}
