import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    Key? key,
    required this.title,
    required this.pageName,
    required this.imgSrc,
    required this.imgProfile,
    this.rightSpacing = true,
  }) : super(key: key);
  final String title, pageName, imgSrc, imgProfile;
  final bool rightSpacing;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(pageName);
          },
          child: Container(
            // width: 155.h,
            // height: 200.h,
            width: (deviceWidth - 48.w) / 2,
            height: 4 / 3 * ((deviceWidth - 48.w) / 2),
            decoration: BoxDecoration(
              // color: whiteColor,
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                image: AssetImage(
                  imgSrc,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlurryContainer(
                  blur: 3,
                  elevation: 0,
                  color: blackColor.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                  child: SizedBox(
                    width: 155.w,
                    height: 40.w,
                    child: Row(
                      children: [
                        Container(
                          width: 35.w,
                          height: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            image: DecorationImage(
                              image: AssetImage(imgProfile),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(
                          width: 75.w,
                          height: 35.w,
                          child: Text(
                            title,
                            style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          width: 15.w,
                          height: 35.w,
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 15.w,
                            height: 15.w,
                            child: const Image(
                              image:
                                  AssetImage('assets/icons/icon_verified.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: rightSpacing ? 16.w : 0,
        ),
      ],
    );
  }
}
