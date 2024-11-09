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
  Color? textColor;
  bool? isBold;

  SmallCommonButton({super.key, this.color, this.iconImageUrl, this.isIcon, this.title, this.isBorder, this.textColor, this.isBold, this.borderColor});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Container(
      height: mediaQuerySize.height * 0.035.h,
      width: mediaQuerySize.width * 0.2.w,
      decoration: BoxDecoration(color: color ?? AppColors.primaryColor, borderRadius: BorderRadius.circular(10.sp), border: isBorder ?? false ? Border.all(color: borderColor ?? AppColors.blackColor) : null),
      child: Row(
        mainAxisAlignment: isIcon ?? false ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          SizedBox(height: mediaQuerySize.height * 0.015.h, width: mediaQuerySize.width * 0.05.w, child: isIcon ?? false ? Image.asset(iconImageUrl ?? '') : null),
          Center(
            child: Text(
              title ?? '',
              style: isBold ?? false ? AppTextStyles().mediumTextStyle(fontSize: 10, color: textColor ?? AppColors.blackColor) : AppTextStyles().lightTextStyle(color: textColor ?? AppColors.blackColor),
            ),
          )
        ],
      ),
    );
  }
}
