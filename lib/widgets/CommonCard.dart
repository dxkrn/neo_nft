import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';

class CommonCard extends StatelessWidget {
  CommonCard({
    Key? key,
    required this.title,
    required this.price,
    required this.favCount,
    required this.pageName,
    this.rightSpacing = true,
  }) : super(key: key);
  String title;
  String price;
  int favCount;
  String pageName;
  bool rightSpacing;
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
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/market_explorer/img_popular.png',
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
                  color: whiteColor.withOpacity(0.01),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                  child: SizedBox(
                    width: 155.h,
                    height: 40.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 155.h,
                          child: Text(
                            title,
                            style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 14.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 155.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$price SAR',
                                style: mediumTextStyle.copyWith(
                                  fontSize: 12.sp,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 12.h,
                                    height: 12.h,
                                    child: const Image(
                                      image: AssetImage(
                                        'assets/icons/icon_fav.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.h,
                                  ),
                                  Text(
                                    '$favCount',
                                    style: mediumTextStyle.copyWith(
                                      fontSize: 8.sp,
                                    ),
                                  )
                                ],
                              )
                            ],
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
