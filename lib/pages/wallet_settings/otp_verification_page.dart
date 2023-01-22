import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(deviceWidth, 48.w),
        child: Stack(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Get.back();
                    }),
                    child: Container(
                      margin: EdgeInsets.all(10.w),
                      width: 40.h,
                      height: 40.h,
                      // color: whiteColor,
                      child: const Image(
                        image: AssetImage('assets/icons/icon_back.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Banking Details',
                    style: clashDisplayBoldTextStyle.copyWith(fontSize: 16.sp),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 45.h,
                    height: 32.h,
                  ),
                ],
              ),
            ),
            BlurryContainer(
              blur: 5,
              elevation: 0,
              color: blurryBGColor,
              borderRadius: const BorderRadius.all(Radius.circular(0)),
              child: SizedBox(
                width: deviceWidth,
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            const CommonBackground(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  // top: 80.h,
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
                        const CustomTextField(
                          title: 'Bank Name',
                          hint: 'Enter bank name...',
                        ),
                        const CustomTextField(
                          title: 'Account IBAN Number',
                          hint: 'Enter account IBAN number...',
                          isNumber: true,
                        ),
                        const CustomTextField(
                          title: 'Account Holder Name',
                          hint: 'Enter account holder name...',
                        ),
                      ],
                    ),
                    CustomButton(
                      width: deviceWidth,
                      height: 48.w,
                      text: 'Save Information',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            BlurryContainer(
              blur: 5,
              elevation: 0,
              color: blurryBGColor,
              borderRadius: const BorderRadius.all(Radius.circular(0)),
              child: SizedBox(
                width: deviceWidth,
                height: double.infinity,
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 330.w,
                    height: 490.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        width: 1,
                        color: whiteColor.withOpacity(0.2),
                      ),
                    ),
                    child: BlurryContainer(
                      blur: 5,
                      elevation: 0,
                      color: whiteColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16.r),
                      child: Padding(
                        padding: EdgeInsets.all(24.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 64.w,
                                  height: 64.w,
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/icons/icon_otp_verification.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 24.w,
                                ),
                                Text(
                                  'OTP Verification',
                                  style: clashDisplayBoldTextStyle.copyWith(
                                    fontSize: 24.sp,
                                    color: whiteColor,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                //NOTE: Text Field
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 56.w,
                                      height: 80.w,
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    Container(
                                      width: 56.w,
                                      height: 80.w,
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    Container(
                                      width: 56.w,
                                      height: 80.w,
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    Container(
                                      width: 56.w,
                                      height: 80.w,
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: verticalSpaceMedium,
                                ),
                                Text(
                                  'Please enter sms verification code sent to your mobile number',
                                  style: regularTextStyle.copyWith(
                                    fontSize: 14.sp,
                                    color: whiteColor.withOpacity(0.7),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CustomButton(
                                  width: double.infinity,
                                  height: 48.w,
                                  text: 'Verify',
                                  onTap: () {},
                                ),
                                SizedBox(
                                  height: verticalSpaceMedium,
                                ),
                                CustomButtonBorder(
                                  width: double.infinity,
                                  height: 48.w,
                                  text: 'Resend Code 06:00',
                                  onTap: () {},
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
