import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neo_nft/theme.dart';

// ignore: must_be_immutable
class CustomFileInputField extends StatelessWidget {
  CustomFileInputField({
    Key? key,
    required this.title,
    required this.hint,
    required this.onTap,
    this.width = 0,
  }) : super(key: key);

  final String title, hint;
  final double width;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                title,
                style: clashDisplayBoldTextStyle,
              ),
              SizedBox(
                height: 8.h,
              ),
            ],
          ),
          Container(
            width: width == 0 ? deviceWidth : width,
            height: 120.w,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            margin: EdgeInsets.only(
              bottom: verticalSpaceMedium,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                width: 1,
                color: whiteColor.withOpacity(0.3),
              ),
            ),
            child: Text(
              hint,
              style: regularTextStyle.copyWith(
                color: whiteColor.withOpacity(0.2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
