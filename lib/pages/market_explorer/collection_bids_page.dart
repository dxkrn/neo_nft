// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/group_title.dart';

class CollectionBidsPage extends StatelessWidget {
  const CollectionBidsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: CustomScaffoldBody(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      height: 280.h,
                      child: Container(
                        width: deviceWidth,
                        height: 240.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/market_explorer/img_collection_cover.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 80.h,
                        height: 80.h,
                        margin: EdgeInsets.only(left: 24.w),
                        child: const Image(
                            image: AssetImage(
                                'assets/icons/icon_collection_bids.png')),
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: GestureDetector(
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
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bids',
                    style: semiBoldTextStyle,
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Text(
                    'Explore open bids and make your offer to some the extraordinary digital assets.',
                    style: regularTextStyle.copyWith(
                        color: whiteColor.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  GestureDetector(
                    child: Text(
                      'Read more',
                      style: semiBoldTextStyle,
                    ),
                    onTap: () {
                      print('read more tapped!');
                    },
                  ),
                ],
              ),
            ),

            //NOTE: Discovery
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const GroupTitle(title: 'Discovery'),
                Container(
                  height: 18.w,
                  margin: EdgeInsets.only(
                    right: horizontalSpace,
                    bottom: verticalSpaceMedium,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: SizedBox(
                          width: 16.w,
                          height: 16.w,
                          child: const Image(
                            image: AssetImage('assets/icons/icon_search.png'),
                          ),
                        ),
                        onTap: () {
                          print('Search Icon Tapped!');
                        },
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      GestureDetector(
                        child: SizedBox(
                          width: 16.w,
                          height: 16.w,
                          child: const Image(
                            image: AssetImage('assets/icons/icon_setting.png'),
                          ),
                        ),
                        onTap: () {
                          print('Setting Icon Tapped!');
                        },
                      ),
                      // Text(
                      //   'Search',
                      //   style: regularTextStyle.copyWith(
                      //     color: whiteColor.withOpacity(0.5),
                      //     fontSize: 12.sp,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                left: 24.w,
              ),
              child: GridView.count(
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 0,
                mainAxisSpacing: verticalSpaceMedium,
                childAspectRatio: 3 / 4,
                children: const [
                  CommonCard(
                    title: 'Neo Cube#812',
                    price: '6,000',
                    favCount: 12,
                    pageName: '',
                    rightSpacing: false,
                  ),
                  CommonCard(
                    title: 'Neo Cube#812',
                    price: '6,000',
                    favCount: 12,
                    pageName: '',
                    rightSpacing: false,
                  ),
                  CommonCard(
                    title: 'Neo Cube#812',
                    price: '6,000',
                    favCount: 12,
                    pageName: '',
                    rightSpacing: false,
                  ),
                  CommonCard(
                    title: 'Neo Cube#812',
                    price: '6,000',
                    favCount: 12,
                    pageName: '',
                    rightSpacing: false,
                  ),
                  CommonCard(
                    title: 'Neo Cube#812',
                    price: '6,000',
                    favCount: 12,
                    pageName: '',
                    rightSpacing: false,
                  ),
                  CommonCard(
                    title: 'Neo Cube#812',
                    price: '6,000',
                    favCount: 12,
                    pageName: '',
                    rightSpacing: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
