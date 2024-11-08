import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/main.dart';

class CommonButton extends StatelessWidget {
  Color? color;
  String? title;
  void Function()? onTap;
  CommonButton({super.key, this.color, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: mediaQuerySize.height * 0.07.h,
        width: mediaQuerySize.width.w,
        decoration: BoxDecoration(color: color ?? AppColors.primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(title ?? '',
                style: AppTextStyles().boldTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.whiteColor,
                ))),
      ),
    );
  }
}
