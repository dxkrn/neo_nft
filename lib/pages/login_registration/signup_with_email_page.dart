import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/signup_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_password_text_field.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';
import 'package:neo_nft/widgets/login_signup_background.dart';

class SignupWithEmailPage extends StatefulWidget {
  const SignupWithEmailPage({super.key});

  @override
  State<SignupWithEmailPage> createState() => _SignupWithEmailPageState();
}

class _SignupWithEmailPageState extends State<SignupWithEmailPage> {
  //NOTE: Checkbox Controller
  final SignupCheckBoxController signupCheckBoxController =
      Get.put(SignupCheckBoxController());

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
                            const CustomTextField(
                              title: 'Username',
                              hint: 'Enter your username...',
                            ),
                            const CustomTextField(
                              title: 'Email address',
                              hint: 'Enter your email address...',
                            ),
                            const CustomPasswordTextField(
                              title: 'Password',
                              hint: 'Enter your password...',
                            ),
                            const CustomConfirmPasswordTextField(
                              title: 'Confirm Password',
                              hint: 'Enter your password...',
                            ),
                            Obx(
                              () => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  signupCheckBoxController.isChecked.value
                                      ? GestureDetector(
                                          child: SizedBox(
                                            width: 18.w,
                                            height: 18.w,
                                            child: const Image(
                                              image: AssetImage(
                                                  'assets/icons/icon_check.png'),
                                            ),
                                          ),
                                          onTap: () {
                                            signupCheckBoxController
                                                    .isChecked.value =
                                                !signupCheckBoxController
                                                    .isChecked.value;
                                          })
                                      : GestureDetector(
                                          child: Container(
                                            width: 18.w,
                                            height: 18.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color:
                                                    whiteColor.withOpacity(0.7),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            signupCheckBoxController
                                                    .isChecked.value =
                                                !signupCheckBoxController
                                                    .isChecked.value;
                                          }),
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
                                              ..onTap = () {},
                                          ),
                                          TextSpan(
                                            text:
                                                ' of using NEO NFT Market Mobile App.',
                                            style: regularTextStyle.copyWith(
                                              fontSize: 14.sp,
                                              color:
                                                  whiteColor.withOpacity(0.7),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 60.h,
                            ),
                            // CustomButton(
                            //   width: deviceWidth - 48.w,
                            //   height: 48.w,
                            //   text: 'Create account',
                            //   onTap: () {
                            //     Get.toNamed('/faceIDPage');
                            //   },
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Create account',
                onTap: () {
                  Get.toNamed('/faceIDPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
