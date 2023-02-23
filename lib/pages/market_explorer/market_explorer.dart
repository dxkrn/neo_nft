import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:neo_nft/widgets/group_title.dart';

final List<Widget> featuredList = [
  const FeaturedCard(title: 'NEO CUBE', price: '6000'),
  const FeaturedCard(title: 'AZUKI', price: '3000'),
  const FeaturedCard(title: 'LUMEN', price: '4000'),
];

class MarketExplorer extends StatefulWidget {
  const MarketExplorer({super.key});

  @override
  State<MarketExplorer> createState() => _MarketExplorerState();
}

class _MarketExplorerState extends State<MarketExplorer> {
  int _current = 0;

  int _currentTab = 0;

  final CarouselController _controller = CarouselController();

  final menu = [
    Image.asset(
      'assets/icons/icon_home.png',
    ),
    Image.asset(
      'assets/icons/icon_any.png',
    ),
    Image.asset(
      'assets/icons/icon_user.png',
    ),
    Image.asset(
      'assets/icons/icon_more-horizontal.png',
    ),
  ];

  final menuRoute = [
    '/marketExplorer',
    '/marketExplorer',
    '/userProfilePage',
    '/userSettingsPage',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffoldBody(
        child: Center(
          child: Stack(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: verticalSpaceMedium,
                  ),
                  Container(
                    height: 48.h,
                    margin: EdgeInsets.symmetric(horizontal: horizontalSpace),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 108.h,
                          height: 48.h,
                          child: const Image(
                            image:
                                AssetImage('assets/images/img_logo_small.png'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print('Notif: tapped');
                          },
                          icon: SizedBox(
                            width: 24.h,
                            height: 24.h,
                            child: const Image(
                              image: AssetImage('assets/icons/icon_bell.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceRegular,
                  ),
                  const GroupTitle(title: 'Featured'),

                  //NOTE : Featured
                  // CarouselSlider(
                  //   items: featuredList,
                  //   carouselController: _controller,
                  //   options: CarouselOptions(
                  //     autoPlay: true,
                  //     // enlargeCenterPage: true,
                  //     // aspectRatio: 2.0,
                  //     onPageChanged: (index, reason) {
                  //       setState(() {
                  //         _current = index;
                  //       });
                  //     },
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 8.h,
                  // ),

                  //NOTE: Carousel V2
                  SizedBox(
                    // color: cyanColor,
                    width: double.infinity,
                    height: 174.w,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      children: featuredList,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),

                  //NOTE : Featured Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: featuredList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () {
                          _controller.animateToPage(entry.key);
                        },
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _current == entry.key ? cyanColor : whiteColor,
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  SizedBox(
                    height: verticalSpaceRegular,
                  ),

                  //NOTE : Discovery
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
                                  image: AssetImage(
                                      'assets/icons/icon_search.png'),
                                ),
                              ),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            GestureDetector(
                              child: SizedBox(
                                width: 16.w,
                                height: 16.w,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/icons/icon_setting.png'),
                                ),
                              ),
                              onTap: () {},
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
                  SizedBox(
                    width: deviceWidth,
                    height: 104.h,
                    // color: blueColor,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          width: horizontalSpace,
                        ),
                        const DiscoverCard(
                          title: 'Art',
                          pageUrl: '/collectionArtPage',
                        ),
                        const DiscoverCard(
                          title: 'Collectibles',
                          pageUrl: '/collectionCollectiblesPage',
                        ),
                        const DiscoverCard(
                          title: 'Bids',
                          pageUrl: '/collectionBidsPage',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceRegular,
                  ),

                  //NOTE : Popular
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const GroupTitle(title: 'Popular'),
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
                              child: Text(
                                'View more',
                                style: regularTextStyle.copyWith(
                                  color: whiteColor.withOpacity(0.5),
                                  fontSize: 12.sp,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          width: horizontalSpace,
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceRegular,
                  ),

                  //NOTE : Top Seller
                  const GroupTitle(title: 'Top Seller'),
                  SizedBox(
                    width: deviceWidth,
                    height: 164.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          width: horizontalSpace,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TopSellerCard(
                              title: 'AZUKI',
                              percent: 556.49,
                            ),
                            TopSellerCard(
                              title: 'Nyolings',
                              percent: 428.13,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TopSellerCard(
                              title: 'Meta-morphic fdsf dsf',
                              percent: 556.49,
                            ),
                            TopSellerCard(
                              title: 'Lumen',
                              percent: 428.13,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceRegular,
                  ),

                  //NOTE : Trending
                  const GroupTitle(title: 'Trending'),
                  SizedBox(
                    height: 200.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          width: horizontalSpace,
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceRegular,
                  ),

                  //NOTE : New
                  const GroupTitle(title: 'New'),
                  SizedBox(
                    height: 200.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          width: horizontalSpace,
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                        const CommonCard(
                          title: 'Neo Cube#812',
                          price: '6000',
                          favCount: 12,
                          pageName: '/itemDetail',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
              Positioned(
                  // center the widget
                  left: 0,
                  right: 0,
                  bottom: 20.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                    ),
                    child: BlurryContainer(
                      blur: 1,
                      height: 65.h,
                      elevation: 0,
                      color: blackColor.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(64.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: menu.map((e) {
                          final int index = menu.indexOf(e);

                          return CircleAvatar(
                            backgroundColor: _currentTab == index
                                ? purpleColor
                                : Colors.transparent,
                            child: IconButton(
                              icon: e,
                              tooltip: 'Menu',
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _currentTab = index;
                                });
                                Get.toNamed(
                                  menuRoute[index],
                                );
                              },
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    Key? key,
    required this.title,
    required this.price,
    this.imgSrc = 'assets/images/market_explorer/img_featured.png',
  }) : super(key: key);
  final String title, price, imgSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
          width: double.infinity,
          // width: deviceWidth - 48.w,
          height: 174.w,
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/market_explorer/img_featured.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 56.w,
                decoration: BoxDecoration(
                  // color: cyanColor,
                  gradient: LinearGradient(
                    colors: [
                      blackColor.withOpacity(0),
                      blackColor.withOpacity(0.99),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: boldTextStyle.copyWith(
                          fontSize: 20.sp,
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Text(
                      //       'Floor:',
                      //       style: regularTextStyle.copyWith(
                      //         color: whiteColor.withOpacity(0.7),
                      //       ),
                      //     ),
                      //     Text(
                      //       ' $price SAR',
                      //       style: mediumTextStyle,
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class TopSellerCard extends StatelessWidget {
  const TopSellerCard({
    Key? key,
    required this.title,
    required this.percent,
  }) : super(key: key);
  final String title;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 16.w,
      ),
      padding: EdgeInsets.only(left: 10.w),
      width: 200.w,
      height: 65.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          width: 1,
          color: greyColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/market_explorer/img_top_seller.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          SizedBox(
            width: 130.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title.length >= 16
                        ? SizedBox(
                            width: 110.w,
                            child: Text(
                              title,
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                          )
                        : SizedBox(
                            child: Text(
                              title,
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SizedBox(
                      width: 16.w,
                      height: 16.w,
                      child: const Image(
                        image: AssetImage(
                          'assets/icons/icon_verified.png',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 120.h,
                  child: Text(
                    '$percent%',
                    style: mediumTextStyle.copyWith(
                      color: greenColor,
                      fontSize: 12.sp,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    Key? key,
    required this.title,
    required this.pageUrl,
  }) : super(key: key);
  final String title, pageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(pageUrl);
          },
          child: Container(
            width: 104.h,
            height: 104.h,
            decoration: BoxDecoration(
              border: Border.all(width: 0),
              borderRadius: BorderRadius.circular(8.r),
              color: whiteColor,
              image: const DecorationImage(
                image: AssetImage(
                    'assets/images/market_explorer/img_discover.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlurryContainer(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                  color: blackColor.withOpacity(0.3),
                  blur: 3,
                  child: Container(
                    width: 104.h,
                    height: 15.h,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: clashDisplayBoldTextStyle.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
      ],
    );
  }
}
