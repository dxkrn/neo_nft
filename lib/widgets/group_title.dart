import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neo_nft/theme.dart';

class GroupTitle extends StatelessWidget {
  const GroupTitle({
    Key? key,
    required this.title,
    this.textAlign,
  }) : super(key: key);

  final String title;

  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: horizontalSpace,
        right: horizontalSpace,
        bottom: verticalSpaceMedium,
      ),
      child: Text(
        title,
        textAlign: textAlign,
        style: clashDisplayBoldTextStyle.copyWith(
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
