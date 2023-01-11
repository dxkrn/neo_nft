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

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Wallet'),
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
                      'Connected wallet',
                      style: clashDisplayBoldTextStyle.copyWith(
                        fontSize: 24.sp,
                      ),
                      textAlign: TextAlign.left,
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hesa Wallet',
                                  style: clashDisplayBoldTextStyle,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '0x1647...0f43b87332',
                                      style: mediumTextStyle.copyWith(
                                        color: whiteColor.withOpacity(0.7),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                      height: 16.w,
                                      child: const Image(
                                          image: AssetImage(
                                              'assets/icons/icon_copy.png')),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Get.toNamed('/walletPage');
                      },
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
