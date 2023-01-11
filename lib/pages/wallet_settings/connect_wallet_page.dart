import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border_with_icon.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';
import 'package:neo_nft/widgets/login_signup_background.dart';

class ConnectWalletPage extends StatelessWidget {
  const ConnectWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Connect Wallet'),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: verticalSpaceRegular,
                    ),
                    Text(
                      'To get started connect your self-custodian digital wallet',
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
                        'Make secure transactions and store your digital assets safely.',
                        style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7)),
                      ),
                    ),
                    SizedBox(
                      height: verticalSpaceRegular,
                    ),
                    Text(
                      'Supported wallet:',
                      style: clashDisplayBoldTextStyle,
                    ),
                    SizedBox(
                      height: verticalSpaceMedium,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 80.w,
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            width: 1,
                            color: whiteColor.withOpacity(0.7),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 48.w,
                              height: 48.w,
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/hesa/icon_hesa.png'),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'Hesa  Encrypted Wallet',
                              style: clashDisplayBoldTextStyle,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
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
