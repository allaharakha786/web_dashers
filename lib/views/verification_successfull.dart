import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';

class VerficationSucessfullScreen extends StatelessWidget {
  const VerficationSucessfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
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
