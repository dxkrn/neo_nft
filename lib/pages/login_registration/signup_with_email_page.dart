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

class SignupWithEmailPage extends StatelessWidget {
  const SignupWithEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Sign Up with Email'),
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
                            Text(
                              'Get started!\nIt’s now or never',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 24.sp,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: verticalSpaceRegular,
                            ),
                            CustomTextField(
                              title: 'Username',
                              hint: 'Enter your username...',
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
                            CustomTextField(
                              title: 'Confirm Password',
                              hint: 'Enter your password...',
                              hidePass: true,
                              withIcon: true,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  width: deviceWidth - 82.w,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'I Agree to the ',
                                      style: regularTextStyle.copyWith(
                                        fontSize: 14.sp,
                                        color: whiteColor.withOpacity(0.7),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Terms & Conditions',
                                          style: boldTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Terms & Condition Tapped');
                                            },
                                        ),
                                        TextSpan(
                                          text:
                                              ' of using NEO NFT Market Mobile App.',
                                          style: regularTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            color: whiteColor.withOpacity(0.7),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60.h,
                            ),
                            CustomButton(
                              width: deviceWidth - 48.w,
                              height: 48.w,
                              text: 'Create account',
                              onTap: () {
                                Get.toNamed('/faceIDPage');
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
