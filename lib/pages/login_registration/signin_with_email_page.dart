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

class SigninWithEmailPage extends StatelessWidget {
  const SigninWithEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Sign In with Email'),
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
                  // bottom: 50.h,
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: verticalSpaceRegular,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sign in to your\nNEO NFTz Account',
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
                                    'Saudi Arabia’s favorite NFT marketplace!',
                                    style: regularTextStyle.copyWith(
                                        color: whiteColor.withOpacity(0.7)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: verticalSpaceRegular,
                            ),
                            CustomTextField(
                              title: 'Email address',
                              hint: 'Enter your email address...',
                            ),
                            CustomTextField(
                              title: 'Password',
                              hint: 'Enter your password...',
                              hidePass: true,
                              withIcon: true,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 18.w,
                                      height: 18.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: whiteColor.withOpacity(0.7),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    SizedBox(
                                      child: Text(
                                        'Remember me',
                                        style: regularTextStyle.copyWith(
                                          color: whiteColor.withOpacity(0.7),
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  child: Text(
                                    'Forgot my password?',
                                    style: mediumTextStyle.copyWith(
                                      color: whiteColor,
                                      fontSize: 14.sp,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () {
                                    print('Forgot my password tapped!');
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 230.h,
                            ),
                            CustomButton(
                              width: deviceWidth - 48.w,
                              height: 48.w,
                              text: 'Sign In',
                              onTap: () {
                                Get.toNamed('');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
