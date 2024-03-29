import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
              'Wallet',
              style: clashDisplayBoldTextStyle.copyWith(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 45.h,
              height: 32.h,
              child: const Image(
                image: AssetImage('assets/icons/icon_debit.png'),
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
                                    GestureDetector(
                                      child: SizedBox(
                                        width: 16.w,
                                        height: 16.w,
                                        child: const Image(
                                            image: AssetImage(
                                                'assets/icons/icon_copy.png')),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Get.toNamed('/addCardPage');
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
