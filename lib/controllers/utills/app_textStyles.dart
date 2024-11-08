import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';

class AppTextStyles {
  TextStyle lightTextStyle({double? fontSize, Color? color}) {
    return TextStyle(fontFamily: 'light', fontSize: fontSize ?? 12.sp, color: color ?? AppColors.blackColor);
  }

  TextStyle mediumTextStyle({double? fontSize, Color? color, FontWeight? fontWeight}) {
    return TextStyle(fontFamily: 'medium', fontSize: fontSize ?? 20.sp, color: color ?? AppColors.blackColor, fontWeight: fontWeight ?? FontWeight.w300);
  }

  TextStyle boldTextStyle({double? fontSize, Color? color, FontWeight? fontWeight}) {
    return TextStyle(fontWeight: fontWeight ?? FontWeight.w500, fontFamily: 'bold', fontSize: fontSize ?? 32.sp, color: color ?? AppColors.blackColor);
  }
}
