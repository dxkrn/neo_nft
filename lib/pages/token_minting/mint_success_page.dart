import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';

class MintSuccessPage extends StatefulWidget {
  const MintSuccessPage({super.key});

  @override
  State<MintSuccessPage> createState() => _MintSuccessPageState();
}

class _MintSuccessPageState extends State<MintSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: CustomScaffoldBody(
        child: Stack(
          children: [
            SafeArea(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32.w,
                      left: 24.w,
                      right: 24.w,
                      bottom: 50.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NFT information',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: verticalSpaceSmall,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ultrices arcu.',
                          style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          height: verticalSpaceRegular,
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const CustomTextField(
                              title: 'NFT price',
                              hint: 'Enter your NFT price...',
                              withIcon: true,
                              imgSrc: 'assets/icons/icon_sar.png',
                              isNumber: true,
                            ),
                            const CustomTextField(
                              title: 'NFT URL',
                              hint: 'Enter your NFT url...',
                            ),
                            const CustomTextField(
                              title: 'Social Media Links',
                              hint: 'Enter your NFT discord link...',
                              withIcon: true,
                              imgSrc: 'assets/icons/icon_discord.png',
                            ),
                            const CustomTextField(
                              title: '',
                              hint: 'Enter your NFT twitter link...',
                              withIcon: true,
                              imgSrc: 'assets/icons/icon_twitter.png',
                              withTitle: false,
                            ),
                            const CustomTextField(
                              title: 'Royalty Rate',
                              hint: 'Enter your royalty rate...',
                              withIcon: true,
                              imgSrc: 'assets/icons/icon_percent.png',
                              isNumber: true,
                            ),
                            Text(
                              'Royalty rate will guarantee your creator royalty fee every time your asset is sold by other users for its entire existance',
                              style: regularTextStyle.copyWith(
                                fontSize: 14.sp,
                                color: whiteColor.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(
                              height: verticalSpaceMedium,
                            ),

                            //NOTE: Your Wallet Address
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your Wallet Address',
                                  style: clashDisplayBoldTextStyle.copyWith(
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: verticalSpaceSmall,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        width: 1,
                                        color: whiteColor.withOpacity(0.5),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Select Collection...',
                                          style: regularTextStyle.copyWith(
                                            color: whiteColor.withOpacity(0.2),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                          height: 16.w,
                                          child: const Image(
                                            image: AssetImage(
                                                'assets/icons/icon_arrow_down.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.w,
                                ),
                                const CustomTextField(
                                  title: '',
                                  hint: 'Enter your wallet address...',
                                  withTitle: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Continue',
                onTap: () {
                  Get.toNamed('/mintCategoryPage');
                },
              ),
            ),
            BlurryContainer(
              blur: 3,
              elevation: 0,
              color: blackColor.withOpacity(0.9),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.r),
                bottomRight: Radius.circular(8.r),
              ),
              child: Container(),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 330.w,
                height: 300.w,
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
                                    'assets/icons/icon_mint_success.png'),
                              ),
                            ),
                            SizedBox(
                              height: 24.w,
                            ),
                            Text(
                              'Mint Success',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 24.sp,
                                color: whiteColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: verticalSpaceSmall,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consec adipiscing elit ultrices arcu.',
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
                              text: 'Done',
                              onTap: () {
                                Get.toNamed('mintCategoryPage');
                              },
                            ),
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
      ),
    );
  }
}
