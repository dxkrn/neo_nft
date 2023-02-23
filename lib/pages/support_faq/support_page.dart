// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Support'),
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
                    Text(
                      'Support',
                      style:
                          clashDisplayBoldTextStyle.copyWith(fontSize: 24.sp),
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
                      children: [
                        SupportSingle(
                          title: 'Lorem ipsum dolor sit amet, consect.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
                        ),
                        SupportSingle(
                          title: 'Lorem ipsum dolor sit amet, consect.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
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
