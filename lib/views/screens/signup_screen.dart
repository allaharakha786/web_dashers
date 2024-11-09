import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/screens/verify_otp_screen.dart';
import 'package:web_dasher/views/widgets/common_widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: mediaQuerySize.height.h,
        width: mediaQuerySize.width.w,
        child: Stack(
          children: [
            Container(
              height: mediaQuerySize.height * 0.6.h,
              width: mediaQuerySize.width.w,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/pngs/signup_img.png'))),
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
                      SizedBox(
                        height: mediaQuerySize.height * 0.05.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Enter your phone number',
                        style: AppTextStyles().boldTextStyle(fontSize: 18.sp, color: AppColors.blackColor1),
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.03.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'You can login or sign up if you \n are  new to Mach',
                        style: AppTextStyles().mediumTextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.03.h,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.02.h,
                      ),
                      Container(
                          width: mediaQuerySize.width,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all()),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: mediaQuerySize.height * 0.019.h),
                              border: InputBorder.none,
                              prefixIcon: SizedBox(
                                width: mediaQuerySize.width * 0.4.w,
                                child: Row(
                                  children: [
                                    CountryCodePicker(
                                      onChanged: print,
                                      initialSelection: 'IT',
                                      favorite: ['+39', 'FR'],
                                      showCountryOnly: false,
                                      showOnlyCountryWhenClosed: false,
                                      alignLeft: false,
                                    ),
                                    Image.asset('assets/pngs/veritical_divider.png')
                                  ],
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: mediaQuerySize.height * 0.04.h,
                      ),
                      CommonButton(
                        onTap: () {
                          Get.to(() => VerifyOtpScreen());
                        },
                        color: AppColors.primaryColor,
                        title: 'Get OTP',
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.03.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
