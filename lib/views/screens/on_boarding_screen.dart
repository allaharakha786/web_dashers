import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/screens/home_screen.dart';
import 'package:web_dasher/views/screens/signup_screen.dart';
import 'package:web_dasher/views/widgets/common_widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  RxInt _currentIndex = 0.obs;

  void _onNext() {
    _currentIndex.value = (_currentIndex.value + 1);
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Obx(() {
      return Scaffold(
        body: Container(
          height: mediaQuerySize.height.h,
          width: mediaQuerySize.width.w,
          child: Stack(
            children: [
              Container(
                height: mediaQuerySize.height * 0.6.h,
                width: mediaQuerySize.width.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(_currentIndex == 0
                            ? 'assets/pngs/boarding_image_1.png'
                            : _currentIndex == 1
                                ? 'assets/pngs/boarding_image_2.png'
                                : _currentIndex == 2
                                    ? 'assets/pngs/boarding_image_3.png'
                                    : _currentIndex == 3
                                        ? 'assets/pngs/boarding_image_4.png'
                                        : _currentIndex == 4
                                            ? 'assets/pngs/boarding_image_5.png'
                                            : ''))),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: mediaQuerySize.height * 0.55.h,
                  width: mediaQuerySize.width.w,
                  decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(40.sp), topRight: Radius.circular(40.sp))),
                  child: Padding(
                    padding: EdgeInsets.only(left: mediaQuerySize.width * 0.05, right: mediaQuerySize.width * 0.05),
                    child: Column(
                      children: [
                        DotsIndicator(
                          dotsCount: 5,
                          position: _currentIndex.value,
                          decorator: DotsDecorator(
                            activeColor: Colors.blue,
                            color: Colors.grey,
                            size: Size.square(8.0),
                            activeSize: Size(18.0, 8.0),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQuerySize.height * 0.03.h,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          _currentIndex == 0
                              ? 'Forgot something?'
                              : _currentIndex == 1
                                  ? 'Get ready to obsess'
                                  : _currentIndex == 2
                                      ? 'Get a front-row seat to your delivery drama'
                                      : _currentIndex == 3
                                          ? "Your order's got a ticket to speed"
                                          : _currentIndex == 4
                                              ? 'Your safety is our top priority'
                                              : '',
                          style: AppTextStyles().boldTextStyle(fontSize: 18.sp, color: AppColors.blackColor1),
                        ),
                        SizedBox(
                          height: mediaQuerySize.height * 0.03.h,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          _currentIndex == 0
                              ? 'Want something picked up?\nMach has you covered.'
                              : _currentIndex == 1
                                  ? 'New stuff, every day\nUnleash your inner shopaholic.'
                                  : _currentIndex == 2
                                      ? 'Anticipation overload?/nTrack it and chill'
                                      : _currentIndex == 3
                                          ? "We don't play slow delivery games"
                                          : _currentIndex == 4
                                              ? 'Shop confidently, pay securely'
                                              : '',
                          style: AppTextStyles().mediumTextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                        SizedBox(
                          height: mediaQuerySize.height * 0.03.h,
                        ),
                        CommonButton(
                          onTap: () {
                            Get.to(() => SignupScreen());
                          },
                          title: 'Login',
                        ),
                        SizedBox(
                          height: mediaQuerySize.height * 0.02.h,
                        ),
                        CommonButton(
                          onTap: () {
                            Get.to(() => SignupScreen());
                          },
                          color: AppColors.primaryColor1,
                          title: 'Sign up',
                        ),
                        SizedBox(
                          height: mediaQuerySize.height * 0.03.h,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                width: mediaQuerySize.width * 0.75,
                                child: Text(
                                  'You agree to our Terms of Service and Privacy Policy by logging in or registering.',
                                  style: AppTextStyles().lightTextStyle(fontSize: 14),
                                )))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: mediaQuerySize.height * 0.05,
                right: mediaQuerySize.width * 0.05.w,
                child: Container(
                  height: mediaQuerySize.height * 0.055.h,
                  width: mediaQuerySize.width * 0.2.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),
                  child: Center(
                    child: _currentIndex == 4
                        ? GestureDetector(
                            onTap: () {
                              print('Done');
                            },
                            child: Text(
                              'Next',
                              style: AppTextStyles().mediumTextStyle(color: AppColors.whiteColor, fontSize: 13.sp),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _onNext();
                              print(_currentIndex);
                            },
                            child: Text(
                              'Skip',
                              style: AppTextStyles().mediumTextStyle(color: AppColors.whiteColor, fontSize: 13.sp),
                            ),
                          ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
