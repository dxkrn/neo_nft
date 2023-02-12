import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';

class CommonCard extends StatefulWidget {
  const CommonCard({
    Key? key,
    required this.title,
    required this.price,
    required this.favCount,
    required this.pageName,
    this.rightSpacing = true,
  }) : super(key: key);
  final String title, price, pageName;
  final int favCount;
  final bool rightSpacing;

  @override
  State<CommonCard> createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  bool loved = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: (deviceWidth - 48.w) / 2,
          height: 4 / 3 * ((deviceWidth - 48.w) / 2),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              GestureDetector(
                onTap: () => {Get.toNamed(widget.pageName)},
                child: Container(
                  // width: 155.h,
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
                ),
              ),
              BlurryContainer(
                blur: 3,
                elevation: 0,
                color: blackColor.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r),
                ),
                child: SizedBox(
                  height: 40.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: SizedBox(
                          width: 155.h,
                          child: Text(
                            widget.title,
                            style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 14.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        onTap: () => {Get.toNamed(widget.pageName)},
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.price} SAR',
                              style: mediumTextStyle.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => setState(() {
                                loved = !loved;
                              }),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12.h,
                                    height: 12.h,
                                    child: Image(
                                      image: AssetImage(
                                        loved
                                            ? 'assets/icons/icon_fav_alt.png'
                                            : 'assets/icons/icon_fav.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.h,
                                  ),
                                  Text(
                                    '${widget.favCount}',
                                    style: mediumTextStyle.copyWith(
                                        fontSize: 8.sp,
                                        color: loved ? redColor : null),
                                  )
                                ],
                              ),
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
        SizedBox(
          width: widget.rightSpacing ? 16.w : 0,
        ),
      ],
    );
  }
}
