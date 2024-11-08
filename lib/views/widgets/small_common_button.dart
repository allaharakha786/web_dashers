import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';

class SmallCommonButton extends StatelessWidget {
  Color? color;
  String? title;
  bool? isIcon;
  String? iconImageUrl;
  bool? isBorder;
  Color? borderColor;

  SmallCommonButton({super.key, this.color, this.iconImageUrl, this.isIcon, this.title, this.isBorder});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Container(
      height: mediaQuerySize.height * 0.03.h,
      width: mediaQuerySize.width * 0.1.w,
      decoration: BoxDecoration(
        color: color ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Row(
        children: [SizedBox(height: mediaQuerySize.height * 0.015.h, width: mediaQuerySize.width * 0.05.w, child: Image.asset(iconImageUrl ?? ''))],
      ),
    );
  }
}
