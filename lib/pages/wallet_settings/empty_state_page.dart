import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';

class EmptyStatePage extends StatelessWidget {
  const EmptyStatePage({super.key});

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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 64.w,
                            height: 64.w,
                            child: const Image(
                              image: AssetImage(
                                'assets/icons/icon_empty_state.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: verticalSpaceRegular,
                          ),
                          SizedBox(
                            child: Text(
                              'No wallet connected!',
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
                              'Connect a wallet to start purchasing unique digital assets.',
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
                        text: 'Connect a Wallet',
                        onTap: () {
                          Get.toNamed('/connectWalletPage');
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
