import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neo_nft/theme.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    this.hidePass = false,
    this.withIcon = false,
  }) : super(key: key);

  String title, hint;
  bool hidePass, withIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: clashDisplayBoldTextStyle,
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          width: deviceWidth,
          height: 48.w,
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
          child: TextField(
            cursorColor: whiteColor,
            style: regularTextStyle,
            obscureText: hidePass,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: regularTextStyle.copyWith(
                color: whiteColor.withOpacity(0.2),
              ),
              hintText: hint,
              suffixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  withIcon
                      ? GestureDetector(
                          child: SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: const Image(
                              image: AssetImage('assets/icons/icon_eye.png'),
                            ),
                          ),
                          onTap: () {},
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
