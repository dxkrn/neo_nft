import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border_with_icon.dart';
import 'package:neo_nft/widgets/loginSignupBackground.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('SignUp'),
      body: Center(
        child: Stack(
          children: [
            const LoginSignupBackground(),
            Padding(
              padding: EdgeInsets.only(
                top: 80.h,
                left: horizontalSpace,
                right: horizontalSpace,
                bottom: 50.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: verticalSpaceRegular,
                      ),
                      Text(
                        'Get started now!',
                        style: clashDisplayBoldTextStyle.copyWith(
                          fontSize: 24.sp,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        child: Text(
                          'It’s your time to hoard unique digital assets.',
                          style: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomButton(
                        width: deviceWidth - 48.w,
                        height: 48.w,
                        text: 'Continue with email',
                        onTap: () {
                          Get.toNamed('/signupWithEmailPage');
                        },
                      ),
                      SizedBox(
                        height: verticalSpaceMedium,
                      ),
                      Center(
                        child: Text(
                          'Or',
                          style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7),
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: verticalSpaceMedium,
                      ),
                      CustomButtonBorderIcon(
                        width: deviceWidth - 48.w,
                        height: 48.w,
                        text: 'Continue with Apple',
                        imgSrc: 'assets/icons/icon_apple.png',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: verticalSpaceMedium,
                      ),
                      CustomButtonBorderIcon(
                        width: deviceWidth - 48.w,
                        height: 48.w,
                        text: 'Continue with Google',
                        imgSrc: 'assets/icons/icon_google.png',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
