import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/utills/app_colors.dart';
import '../../controllers/utills/app_textStyles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: GestureDetector(
        onTap: () {
          // Get.to(() => ShowEquipmentNameProfile(
          //       id: '',
          //     ));
        },
        child: Container(
          padding: EdgeInsets.only(right: 2.w, top: 10, bottom: 10, left: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.blackColor),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/pngs/map_item_img.png",
                height: 100,
                width: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 2.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RatingBar(
                          filledIcon: Icons.star,
                          filledColor: AppColors.ratingColor,
                          size: 18,
                          emptyIcon: Icons.star_border,
                          onRatingChanged: (value) => debugPrint('$value'),
                          initialRating: 5,
                          maxRating: 5,
                        ),
                        SizedBox(width: 1.h),
                        Text("5.0", style: AppTextStyles().lightTextStyle()),
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Text(
                      "4U Store Kuwait",
                      style: AppTextStyles().mediumTextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 1.5.h),
                    Text(
                      "A5mall, Shuwaikh industrial, Kuwait",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
