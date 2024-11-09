import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/screens/verification_successfull.dart';
import 'package:web_dasher/views/widgets/common_widgets.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
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
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/pngs/verify_otp_img.png'))),
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
                        'Please enter 4 digit\nverification code',
                        style: AppTextStyles().boldTextStyle(fontSize: 18.sp, color: AppColors.blackColor1),
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.02.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Please enter  One Time Password',
                        style: AppTextStyles().mediumTextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.035.h,
                      ),
                      PinCodeTextField(
                        appContext: context,
                        length: 4, // Number of OTP digits
                        onChanged: (value) {
                          print(value);
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.02.h,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.02.h,
                      ),
                      CommonButton(
                        onTap: () {
                          Get.off(() => VerficationSucessfullScreen());
                        },
                        color: AppColors.primaryColor,
                        title: 'Verify OTP',
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.03.h,
                      ),
                      RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(text: 'Didn’t get the code? ', style: AppTextStyles().lightTextStyle(color: AppColors.blackColor)),
                          TextSpan(text: 'Resend', style: AppTextStyles().mediumTextStyle(fontSize: 12, color: AppColors.primaryColor)),
                        ],
                      ))
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
