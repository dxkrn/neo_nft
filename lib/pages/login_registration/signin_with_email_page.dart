import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/signin_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_password_text_field.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';
import 'package:neo_nft/widgets/login_signup_background.dart';

class SigninWithEmailPage extends StatefulWidget {
  const SigninWithEmailPage({super.key});

  @override
  State<SigninWithEmailPage> createState() => _SigninWithEmailPageState();
}

class _SigninWithEmailPageState extends State<SigninWithEmailPage> {
  //NOTE: Checkbox Controller
  final SigninCheckBoxController signinCheckBoxController =
      Get.put(SigninCheckBoxController());

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
                            const CustomTextField(
                              title: 'Email address',
                              hint: 'Enter your email address...',
                            ),
                            const CustomPasswordTextField(
                              title: 'Password',
                              hint: 'Enter your password...',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => Row(
                                    children: [
                                      signinCheckBoxController.isChecked.value
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
                                                signinCheckBoxController
                                                        .isChecked.value =
                                                    !signinCheckBoxController
                                                        .isChecked.value;
                                              })
                                          : GestureDetector(
                                              child: Container(
                                                width: 18.w,
                                                height: 18.w,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: whiteColor
                                                        .withOpacity(0.7),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                signinCheckBoxController
                                                        .isChecked.value =
                                                    !signinCheckBoxController
                                                        .isChecked.value;
                                              },
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
                                  onTap: () {},
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
