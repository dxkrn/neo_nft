import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';

class MintInformationPage extends StatefulWidget {
  const MintInformationPage({super.key});

  @override
  State<MintInformationPage> createState() => _MintInformationPageState();
}

class _MintInformationPageState extends State<MintInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Start Minting'),
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
                  Get.toNamed('/mintSuccessPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
