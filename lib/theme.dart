import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color purpleColor = Color(0xff9A00DF);
Color whiteColor = Color(0xffFFFFFF);
Color blackColor = Color(0x000000);
Color redColor = Color(0xffFA0848);
Color cyanColor = Color(0xff00FFF6);
Color blueColor = Color(0xff2065D6);
Color greyColor = Color(0xff7F7F7F);
Color greenColor = Color(0xff009E3D);
Color blurryBGColor = Color(0xff0D0013).withOpacity(0.9);

TextStyle clashDisplayBoldTextStyle = TextStyle(
  fontFamily: 'ClashDisplay',
  fontWeight: FontWeight.w700,
  fontSize: 16.sp,
  color: whiteColor,
);

TextStyle boldTextStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w700,
  color: whiteColor,
  fontSize: 16.sp,
);

TextStyle semiBoldTextStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w600,
  color: whiteColor,
  fontSize: 16.sp,
);

TextStyle mediumTextStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w500,
  color: whiteColor,
  fontSize: 16.sp,
);

TextStyle regularTextStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w400,
  color: whiteColor,
  fontSize: 16.sp,
);

double deviceWidth = Get.width;
double deviceHeight = Get.height;
double horizontalSpace = 24.w;
double verticalSpaceSmall = 8.h;
double verticalSpaceMedium = 16.h;
double verticalSpaceRegular = 24.h;
