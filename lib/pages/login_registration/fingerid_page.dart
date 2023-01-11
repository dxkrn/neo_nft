import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border_with_icon.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';
import 'package:neo_nft/widgets/login_signup_background.dart';

class FingerIDPage extends StatelessWidget {
  const FingerIDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Finger ID Set Up'),
      body: Center(
        child: Stack(
          children: [
            const LoginSignupBackground(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  // top: 80.h,
                  left: horizontalSpace,
                  right: horizontalSpace,
                  bottom: 50.h,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 64.w,
                            height: 64.w,
                            child: const Image(
                              image: AssetImage(
                                'assets/icons/icon_fingerid.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: verticalSpaceRegular,
                          ),
                          SizedBox(
                            child: Text(
                              'Secure your Account',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          SizedBox(
                            width: deviceWidth - 48.w,
                            child: Text(
                              'We recommend you set up biometric lock to secure your account from any unwanted tampering.',
                              style: regularTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        width: deviceWidth - 48.w,
                        height: 48.w,
                        text: 'Start scan',
                        onTap: () {
                          Get.toNamed('/fingerIDPage');
                        },
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
