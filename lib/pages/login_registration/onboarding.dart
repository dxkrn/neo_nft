import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding/img_bg_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: SizedBox(
                    width: 262.w,
                    height: 146.w,
                    child: const Image(
                      image: AssetImage('assets/images/img_logo.png'),
                    ),
                  )),
                  Column(
                    children: [
                      SizedBox(
                        height: 70.w,
                      ),
                      SizedBox(

                        width: 327.w,
                        child: Text(
                          'The New World\nis Here',
                          style: clashDisplayBoldTextStyle.copyWith(
                            fontSize: 32.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 327.w,
                        child: Text(
                          'Bytes and Pixels -\na World of New Assets.',
                          style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      CustomButton(
                        width: 327.w,
                        height: 48.w,
                        text: 'Create an account',
                        onTap: () {
                          Get.toNamed('/signupPage');
                        },
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomButtonBorder(
                        width: 327.w,
                        height: 48.w,
                        text: 'I already have an account',
                        onTap: () {
                          Get.toNamed('/signinPage');
                        },
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        ' Powered by\nAlMajra Blockchain Network',
                        style: regularTextStyle.copyWith(
                          color: whiteColor.withOpacity(0.7),
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
