import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neo_nft/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    this.hidePass = false,
    this.withIcon = false,
    this.withTitle = true,
    this.isNumber = false,
    this.width = 0,
    this.maxLength = 999999,
    this.maxLines = 1,
    this.imgSrc = 'assets/icons/icon_eye.png',
  }) : super(key: key);

  final String title, hint, imgSrc;
  final bool hidePass, withIcon, withTitle, isNumber;
  final double width;
  final int maxLength, maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        withTitle
            ? Column(
                children: [
                  Text(
                    title,
                    style: clashDisplayBoldTextStyle,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              )
            : Container(),
        Container(
          width: width == 0 ? deviceWidth : width,
          height: maxLines == 1 ? 48.w : (maxLines - 2) * 48.w,
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
          child: TextField(
            cursorColor: whiteColor,
            style: regularTextStyle,
            obscureText: hidePass,
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            // maxLength: 9999,
            // maxLengthEnforcement: MaxLengthEnforcement.enforced,
            maxLines: maxLines,
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
                            child: Image(
                              image: AssetImage(imgSrc),
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
