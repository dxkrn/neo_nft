// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Frequently Asked\nQuestions'),
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
                      'Frequently Asked Questions',
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
                        FaqSingle(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
                        ),
                        FaqSingle(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
                        ),
                        FaqSingle(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
                        ),
                        FaqSingle(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
                        ),
                        FaqSingle(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
                        ),
                        FaqSingle(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget volutpat quis id ullamcorper porttitor magna ultricies. Eu id faucibus eu, id arcu. Facilisis felis, sagittis, fringilla faucibus neque. Elementum, enim, molestie at urna sed consectetur pellentesque molestie dolor. Et est eget faucibus nulla non.',
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

class FaqSingle extends StatefulWidget {
  FaqSingle({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  String title, desc;
  bool isExpanded = false;

  @override
  State<FaqSingle> createState() => _FaqSingleState();
}

class _FaqSingleState extends State<FaqSingle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: widget.isExpanded ? verticalSpaceMedium : 0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                widget.isExpanded = !widget.isExpanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: deviceWidth - 48.w - 20.w,
                  child: Text(
                    widget.title,
                    style: clashDisplayBoldTextStyle,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                  height: 20.w,
                  child: Image(
                    image: AssetImage(
                      widget.isExpanded
                          ? 'assets/icons/icon_arrow_up.png'
                          : 'assets/icons/icon_arrow_down.png',
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: verticalSpaceSmall,
          ),
          Text(
            widget.isExpanded ? widget.desc : '',
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
