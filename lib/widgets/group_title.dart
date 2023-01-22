import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neo_nft/theme.dart';

class GroupTitle extends StatelessWidget {
  const GroupTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
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
        style: clashDisplayBoldTextStyle.copyWith(
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
