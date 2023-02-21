// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Terms and\nConditions'),
      body: Center(
        child: Stack(
          children: [
            const CommonBackground(),
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 32.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Terms and Conditions',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: verticalSpaceSmall,
                        ),
                        Text(
                          'Last updated: October 05, 2022 \n\nThis Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.',
                          style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: verticalSpaceRegular,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Interpretation and Definitions',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: verticalSpaceSmall,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Interpretation',
                              style: clashDisplayBoldTextStyle,
                            ),
                            SizedBox(
                              height: verticalSpaceSmall,
                            ),
                            Text(
                              'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.',
                              style: regularTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Definitions',
                              style: clashDisplayBoldTextStyle,
                            ),
                            SizedBox(
                              height: verticalSpaceSmall,
                            ),
                            Text(
                              'For the purposes of this Privacy Policy:\n',
                              style: regularTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(
                                '\u2022Account means a unique account created for You to access our Service or parts of our Service.\n\n\u2022Affiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.\n',
                                style: regularTextStyle.copyWith(
                                  color: whiteColor.withOpacity(0.7),
                                ),
                              ),
                            ),
                            Text(
                              'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.',
                              style: regularTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100.w,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Continue',
                onTap: () {
                  Get.toNamed('/augmentedRealityPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SupportSingle extends StatefulWidget {
  SupportSingle({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  String title, desc;

  @override
  State<SupportSingle> createState() => _SupportSingleState();
}

class _SupportSingleState extends State<SupportSingle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: verticalSpaceMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: clashDisplayBoldTextStyle,
          ),
          SizedBox(
            height: verticalSpaceSmall,
          ),
          Text(
            widget.desc,
            style: regularTextStyle.copyWith(
              color: whiteColor.withOpacity(0.7),
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
