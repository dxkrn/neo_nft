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
  FeaturedCard(title: 'NEO CUBE', price: '6000'),
  FeaturedCard(title: 'AZUKI', price: '3000'),
  FeaturedCard(title: 'LUMEN', price: '4000'),
];

class MarketExplorer extends StatefulWidget {
  const MarketExplorer({super.key});

  @override
  State<MarketExplorer> createState() => _MarketExplorerState();
}

class _MarketExplorerState extends State<MarketExplorer> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffoldBody(
        child: Center(
          child: ListView(
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
                        image: AssetImage('assets/images/img_logo_small.png'),
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
              GroupTitle(title: 'Featured'),

              //NOTE : Featured
              CarouselSlider(
                items: featuredList,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  // aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              //NOTE : FEatured Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: featuredList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key ? cyanColor : whiteColor,
                      ),
                    ),
                  );
                }).toList(),
              ),

              SizedBox(
                height: verticalSpaceRegular,
              ),

              //NOTE : Discover
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GroupTitle(title: 'Discover'),
                  GestureDetector(
                    onTap: () {
                      print('Search: tapped');
                    },
                    child: Container(
                      width: 67.w,
                      height: 18.w,
                      margin: EdgeInsets.only(
                        right: horizontalSpace,
                        bottom: verticalSpaceMedium,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 12.w,
                            height: 12.w,
                            child: const Image(
                              image: AssetImage('assets/icons/icon_search.png'),
                            ),
                          ),
                          Text(
                            'Search',
                            style: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
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
                    DiscoverCard(title: 'Art'),
                    DiscoverCard(title: 'Collectibles'),
                    DiscoverCard(title: 'Bids'),
                  ],
                ),
              ),
              SizedBox(
                height: verticalSpaceRegular,
              ),

              //NOTE : Popular
              GroupTitle(title: 'Popular'),
              SizedBox(
                height: 200.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      width: horizontalSpace,
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
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

              //NOTE : Trending
              GroupTitle(title: 'Trending'),
              SizedBox(
                height: 200.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      width: horizontalSpace,
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
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
              GroupTitle(title: 'New'),
              SizedBox(
                height: 200.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      width: horizontalSpace,
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
                      title: 'Neo Cube#812',
                      price: '6000',
                      favCount: 12,
                      pageName: '/itemDetail',
                    ),
                    CommonCard(
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
              GroupTitle(title: 'Top Seller'),
              Container(
                width: deviceWidth,
                height: 144.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      width: horizontalSpace,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                      children: [
                        TopSellerCard(
                          title: 'Meta-morphic',
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
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  FeaturedCard({
    Key? key,
    required this.title,
    required this.price,
    this.imgSrc = 'assets/images/market_explorer/img_featured.png',
  }) : super(key: key);
  String title;
  String price;
  String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
          width: deviceWidth - 48.w,
          height: (deviceWidth) / 2,
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
                width: deviceWidth - 48.w,
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
                      Row(
                        children: [
                          Text(
                            'Floor:',
                            style: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.7),
                            ),
                          ),
                          Text(
                            ' $price SAR',
                            style: mediumTextStyle,
                          ),
                        ],
                      )
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
  TopSellerCard({
    Key? key,
    required this.title,
    required this.percent,
  }) : super(key: key);
  String title;
  double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 16.w,
      ),
      padding: EdgeInsets.only(left: 10.w),
      width: 188.h,
      height: 64.h,
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
            width: 48.h,
            height: 48.h,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 120.h,
                child: Text(
                  title,
                  style: clashDisplayBoldTextStyle.copyWith(
                    fontSize: 14.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
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
        ],
      ),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  DiscoverCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 104.h,
          height: 104.h,
          decoration: BoxDecoration(
            border: Border.all(width: 0),
            borderRadius: BorderRadius.circular(8.r),
            color: whiteColor,
            image: const DecorationImage(
              image:
                  AssetImage('assets/images/market_explorer/img_discover.png'),
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
                color: blackColor.withOpacity(0.11),
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
        SizedBox(
          width: 16.w,
        ),
      ],
    );
  }
}
