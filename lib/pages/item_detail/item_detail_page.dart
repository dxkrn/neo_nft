import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/group_title.dart';

bool expandedAbout = true;
bool expandedDetails = false;

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({super.key});

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: CustomScaffoldBody(
          child: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Container(
                    width: deviceWidth,
                    height: 240.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/market_explorer/img_featured.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
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
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Cube Collection',
                  style: mediumTextStyle.copyWith(
                    color: blueColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  children: [
                    SizedBox(
                      width: deviceWidth - 120.w,
                      child: Text(
                        'NEO CUBE#3',
                        style: clashDisplayBoldTextStyle.copyWith(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    SizedBox(
                      width: 64.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: const Image(
                              image: AssetImage(
                                'assets/icons/icon_share.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: const Image(
                              image: AssetImage(
                                'assets/icons/icon_flag.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: verticalSpaceRegular,
              ),
              GroupTitle(title: 'About'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et tempor adipiscing egestas molestie sed montes, lorem. Lorem a, eget est orci enim lacinia neque orci, duis.',
                  style: regularTextStyle.copyWith(
                    color: whiteColor.withOpacity(0.7),
                  ),
                  maxLines: expandedAbout ? 99 : 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: expandedAbout ? verticalSpaceMedium : 0,
              ),
              Row(
                children: [
                  expandedAbout
                      ? Container(
                          margin: EdgeInsets.only(
                            left: horizontalSpace,
                          ),
                          width: 144.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/icon_twitter.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/icon_instagram.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/icon_discord.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/icon_telegram.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ],
              ),
              SizedBox(
                height: verticalSpaceMedium,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      expandedAbout = !expandedAbout;
                    });
                  },
                  child: Text(
                    expandedAbout ? 'Read less' : 'Read more',
                    style: semiBoldTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: verticalSpaceRegular,
              ),
              GroupTitle(title: 'Collection'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth - 148.w,
                      child: Row(
                        children: [
                          Container(
                            width: 48.w,
                            height: 48.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/item_details/img_cube_collection.png'),
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
                              Text(
                                'Cube Collection',
                                style: clashDisplayBoldTextStyle.copyWith(
                                  color: blueColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                              Text(
                                '120k Collections',
                                style: mediumTextStyle.copyWith(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                      height: 48.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Price',
                            style: mediumTextStyle.copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            '6,000 SAR',
                            style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: verticalSpaceRegular,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      width: 1,
                      color: whiteColor.withOpacity(0.5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sales Activity',
                        style: clashDisplayBoldTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                        height: 16.w,
                        child: const Image(
                          image:
                              AssetImage('assets/icons/icon_arrow_right.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: verticalSpaceRegular,
              ),
              expandedDetails
                  ?
                  //NOTE : Expanded Details
                  DetailsExpanded(
                      onTap: () {
                        setState(() {
                          expandedDetails = !expandedDetails;
                          print(expandedDetails);
                        });
                      },
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          expandedDetails = !expandedDetails;
                          print(expandedDetails);
                        });
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: horizontalSpace),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              width: 1,
                              color: whiteColor.withOpacity(0.5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Details',
                                style: clashDisplayBoldTextStyle.copyWith(
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(
                                width: 16.w,
                                height: 16.w,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/icons/icon_arrow_down.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: verticalSpaceRegular,
              ),
              GroupTitle(title: 'Discovery'),
              Container(
                padding: EdgeInsets.only(left: 24.w),
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: verticalSpaceMedium,
                  childAspectRatio: 3 / 4,
                  children: [
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
              SizedBox(
                height: verticalSpaceRegular,
              ),
            ],
          ),

          //NOTE : Image Stacked
          // Container(
          //   width: deviceWidth,
          //   height: 240.h,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         'assets/images/market_explorer/img_featured.png',
          //       ),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),

          //NOTE : Button Back
          // SafeArea(
          //   child: GestureDetector(
          //     onTap: (() {
          //       Get.back();
          //     }),
          //     child: Container(
          //       margin: EdgeInsets.all(10.w),
          //       width: 40.h,
          //       height: 40.h,
          //       // color: whiteColor,
          //       child: const Image(
          //         image: AssetImage('assets/icons/icon_back.png'),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      )),
    );
  }
}

class DetailsExpanded extends StatelessWidget {
  DetailsExpanded({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
      child: Container(
        padding: EdgeInsets.all(16.w),
        // height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            width: 1,
            color: whiteColor.withOpacity(0.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Details',
                    style: clashDisplayBoldTextStyle.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                    height: 16.w,
                    child: const Image(
                      image: AssetImage('assets/icons/icon_arrow_up.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: verticalSpaceMedium,
            ),
            Container(
              height: 1,
              color: whiteColor.withOpacity(0.5),
            ),
            SizedBox(
              height: verticalSpaceMedium,
            ),
            Text(
              'Creator',
              style: clashDisplayBoldTextStyle.copyWith(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: deviceWidth - 148.w,
              child: Row(
                children: [
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/item_details/img_cube_collection.png'),
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
                      Text(
                        'Hamzah Mashere',
                        style: clashDisplayBoldTextStyle.copyWith(
                          color: blueColor,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        '0x1647...0f43b87332',
                        style: mediumTextStyle.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: verticalSpaceMedium,
            ),
            Container(
              height: 1,
              color: whiteColor.withOpacity(0.5),
            ),
            SizedBox(
              height: verticalSpaceMedium,
            ),
            Text(
              'Owner',
              style: clashDisplayBoldTextStyle.copyWith(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: deviceWidth - 148.w,
              child: Row(
                children: [
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/item_details/img_cube_collection.png'),
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
                      Text(
                        'Badawi.SAR',
                        style: clashDisplayBoldTextStyle.copyWith(
                          color: blueColor,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        '0x1647...0f43b87332',
                        style: mediumTextStyle.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: verticalSpaceMedium,
            ),
            Container(
              height: 1,
              color: whiteColor.withOpacity(0.5),
            ),
            SizedBox(
              height: verticalSpaceMedium,
            ),
            Text(
              'Asset Properties',
              style: clashDisplayBoldTextStyle.copyWith(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            AssetPropertySingle(
              title: 'Clothes',
              value: 'Work vest',
            ),
            AssetPropertySingle(
              title: 'Eyes',
              value: 'Eyepatch',
            ),
            AssetPropertySingle(
              title: 'Hat',
              value: 'Sea Captain’s Hat',
            ),
            AssetPropertySingle(
              title: 'Background',
              value: 'Purple',
            ),
            AssetPropertySingle(
              title: 'Trait Count',
              value: '6',
            ),
            AssetPropertySingle(
              title: 'Fur',
              value: 'Tan',
            ),
            AssetPropertySingle(
              title: 'Mouth',
              value: 'Bored Unshaven',
            ),
            AssetPropertySingle(
              title: 'Earring',
              value: 'None',
            ),
          ],
        ),
      ),
    );
  }
}

class AssetPropertySingle extends StatelessWidget {
  AssetPropertySingle({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: regularTextStyle.copyWith(
              color: whiteColor.withOpacity(0.7),
              fontSize: 14.sp,
            ),
          ),
          Text(
            value,
            style: mediumTextStyle.copyWith(
              color: whiteColor,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
