import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';

AppBar CustomAppbar(String title) {
  return AppBar(
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
          title,
          style: clashDisplayBoldTextStyle.copyWith(fontSize: 16.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 40.h,
          height: 40.h,
        ),
      ],
    ),
  );
}
