import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/screens/bottom_navigation_screen.dart';
import 'package:web_dasher/views/screens/home_screen.dart';

class VerficationSucessfullScreen extends StatefulWidget {
  const VerficationSucessfullScreen({super.key});

  @override
  State<VerficationSucessfullScreen> createState() => _VerficationSucessfullScreenState();
}

class _VerficationSucessfullScreenState extends State<VerficationSucessfullScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Get.off(() => BottomNavigationScreen()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        height: mediaQuerySize.height.h,
        width: mediaQuerySize.width.w,
        child: Center(
          child: Text(
            'Verification\n successful',
            style: AppTextStyles().boldTextStyle(fontSize: 18.sp, color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
