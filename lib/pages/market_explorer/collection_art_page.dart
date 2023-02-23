import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/group_title.dart';

class CollectionArtPage extends StatefulWidget {
  const CollectionArtPage({super.key});

  @override
  State<CollectionArtPage> createState() => _CollectionArtPageState();
}

class _CollectionArtPageState extends State<CollectionArtPage> {
  int filterIndex = 0;

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
                                'assets/icons/icon_collection_art.png')),
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
                    'Art',
                    style: semiBoldTextStyle,
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Text(
                    'Explore unique Art Works that bend the obscene of digital and reality',
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
                            image: AssetImage('assets/icons/icon_setting.png'),
                          ),
                        ),
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              elevation: 0,
                              barrierColor: Colors.black.withAlpha(1),
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return BottomFilter(
                                    defaultFilterIndex: filterIndex,
                                    onFilterIndexChange: (int index) {
                                      setState(() {
                                        filterIndex = index;
                                      });
                                    });
                              });
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

class BottomFilter extends StatefulWidget {
  const BottomFilter(
      {super.key,
      required this.defaultFilterIndex,
      required this.onFilterIndexChange});

  final int defaultFilterIndex;

  // callback set index
  final Function(int) onFilterIndexChange;

  @override
  State<BottomFilter> createState() => _BottomFilterState();
}

class _BottomFilterState extends State<BottomFilter> {
  int? currentFilterIndex;

  final filter = [
    'Buy Now',
    'On Auction',
    'Is Now',
    'Has Offers',
  ];

  @override
  Widget build(BuildContext context) {
    int index = currentFilterIndex ?? widget.defaultFilterIndex;

    return BlurryContainer(
      blur: 3,
      height: Get.height * 0.65,
      color: blackColor.withOpacity(0.9),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 6.h,
        ),
        Center(
          child: Image.asset('assets/icons/icon_gesture-indicator.png'),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: Get.width,
          child: const GroupTitle(
            title: 'Filter',
            textAlign: TextAlign.left,
          ),
        ),
        ListView(
          shrinkWrap: true,
          // space between each filter
          padding: EdgeInsets.only(
            top: verticalSpaceMedium,
          ),
          children: [
            ...filter.map((text) {
              final int fId = filter.indexOf(text);

              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentFilterIndex = fId;
                  });
                },
                child: Container(
                  color: index == fId ? whiteColor : Colors.transparent,
                  margin: EdgeInsets.only(
                    left: horizontalSpace,
                    right: horizontalSpace,
                    bottom: verticalSpaceMedium,
                  ),
                  width: Get.width,
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        width: 1,
                        color: whiteColor.withOpacity(0.5),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                            ),
                            child: Text(
                              text,
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                                color: index == fId ? Colors.black : whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            Container(
              margin: EdgeInsets.only(
                left: horizontalSpace,
                right: horizontalSpace,
                bottom: verticalSpaceMedium,
              ),
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Apply',
                onTap: () {
                  // set index
                  widget.onFilterIndexChange(index);
                  // close the bottom sheet
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
