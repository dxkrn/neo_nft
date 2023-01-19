import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/item_details_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/group_title.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({super.key});

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  //NOTE: Controllers
  final AboutController aboutController = Get.put(AboutController());
  final AboutCollectionController aboutCollectionController =
      Get.put(AboutCollectionController());
  final DetailsController detailsController = Get.put(DetailsController());
  final AssetPropertiesController assetPropertiesController =
      Get.put(AssetPropertiesController());
  final SalesActivityController salesActivityController =
      Get.put(SalesActivityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: CustomScaffoldBody(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 240.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/market_explorer/img_featured.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.w),
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.all(10.w),
                                width: 40.w,
                                height: 40.w,
                                // color: whiteColor,
                                child: const Image(
                                  image:
                                      AssetImage('assets/icons/icon_back.png'),
                                ),
                              ),
                              onTap: () {
                                Get.back();
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.all(10.w),
                                width: 32.w,
                                height: 32.w,
                                // color: whiteColor,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/icons/icon_more_vertical.png'),
                                ),
                              ),
                              onTap: () {
                                Get.dialog(
                                  barrierColor: Colors.transparent,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 65.w, right: 24.w),
                                        child: BlurryContainer(
                                          blur: 3,
                                          elevation: 0,
                                          color: blackColor.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          child: Container(
                                            width: 220.w,
                                            height: 200.w,
                                            padding: EdgeInsets.all(8.w),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                MoreSingleButton(
                                                  title: 'Edit',
                                                  onTap: () {},
                                                ),
                                                MoreSingleButton(
                                                  title: 'Sell Item',
                                                  onTap: () {},
                                                ),
                                                MoreSingleButton(
                                                  title: 'Gift',
                                                  onTap: () {},
                                                ),
                                                MoreSingleButton(
                                                  title: 'Promote',
                                                  onTap: () {},
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
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
                  child: Row(
                    children: [
                      Text(
                        'Cube Collection',
                        style: mediumTextStyle.copyWith(
                          color: blueColor,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      SizedBox(
                        width: 16.w,
                        height: 16.w,
                        child: const Image(
                            image:
                                AssetImage('assets/icons/icon_verified.png')),
                      ),
                    ],
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
                Obx(
                  () => Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et tempor adipiscing egestas molestie sed montes, lorem. Lorem a, eget est orci enim lacinia neque orci, duis.',
                      style: regularTextStyle.copyWith(
                        color: whiteColor.withOpacity(0.7),
                      ),
                      maxLines: aboutController.expandedAbout.value ? 99 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                  height: aboutController.expandedAbout.value
                      ? verticalSpaceMedium
                      : 0,
                ),
                Row(
                  children: [
                    aboutController.expandedAbout.value
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
                        aboutController.expandedAbout.value =
                            !aboutController.expandedAbout.value;
                      });
                    },
                    child: Text(
                      aboutController.expandedAbout.value
                          ? 'Read less'
                          : 'Read more',
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

                //NOTE: About Collection
                aboutCollectionController.expandedAboutCollection.value
                    ?
                    //NOTE : Expanded Details
                    AboutCollectionExpanded(
                        onTap: () {
                          setState(() {
                            aboutCollectionController
                                    .expandedAboutCollection.value =
                                !aboutCollectionController
                                    .expandedAboutCollection.value;
                          });
                        },
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            aboutCollectionController
                                    .expandedAboutCollection.value =
                                !aboutCollectionController
                                    .expandedAboutCollection.value;
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
                                  'About Collection',
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
                  height: verticalSpaceMedium,
                ),

                //NOTE: Details
                detailsController.expandedDetails.value
                    ?
                    //NOTE : Expanded Details
                    DetailsExpanded(
                        onTap: () {
                          setState(() {
                            detailsController.expandedDetails.value =
                                !detailsController.expandedDetails.value;
                            print(detailsController.expandedDetails.value);
                          });
                        },
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            detailsController.expandedDetails.value =
                                !detailsController.expandedDetails.value;
                            print(detailsController.expandedDetails.value);
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
                  height: verticalSpaceMedium,
                ),

                //NOTE: Asset Properties
                assetPropertiesController.expandedProperties.value
                    ?
                    //NOTE : Expanded Details
                    AssetPropertiesExpanded(
                        onTap: () {
                          setState(() {
                            assetPropertiesController.expandedProperties.value =
                                !assetPropertiesController
                                    .expandedProperties.value;
                          });
                        },
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            assetPropertiesController.expandedProperties.value =
                                !assetPropertiesController
                                    .expandedProperties.value;
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
                                  'Asset Properties',
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
                  height: verticalSpaceMedium,
                ),

                //NOTE: Sales Activity
                salesActivityController.expandedSalesActivity.value
                    ?
                    //NOTE : Expanded Details
                    SalesActivityExpanded(
                        onTap: () {
                          setState(() {
                            salesActivityController
                                    .expandedSalesActivity.value =
                                !salesActivityController
                                    .expandedSalesActivity.value;
                          });
                        },
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            salesActivityController
                                    .expandedSalesActivity.value =
                                !salesActivityController
                                    .expandedSalesActivity.value;
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
                                  'Sales Activity',
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

                //NOTE: More
                SizedBox(
                  height: verticalSpaceRegular,
                ),
                GroupTitle(title: 'More from this Collection'),
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
                  height: 100.w,
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
            Positioned(
              bottom: 16.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Purchase',
                onTap: () {
                  Get.dialog(
                    barrierColor: Colors.transparent,
                    useSafeArea: false,
                    barrierDismissible: true,
                    // transitionDuration: Duration(milliseconds: 0),
                    BlurryContainer(
                      blur: 3,
                      elevation: 0,
                      color: blackColor.withOpacity(0.9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.r),
                        bottomRight: Radius.circular(8.r),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 50.w,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            // width: 330.w,
                            // height: 490.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                width: 1,
                                color: whiteColor.withOpacity(0.2),
                              ),
                            ),
                            child: BlurryContainer(
                              blur: 5,
                              elevation: 0,
                              color: whiteColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16.r),
                              child: Padding(
                                padding: EdgeInsets.all(14.w),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Purchase',
                                          style: clashDisplayBoldTextStyle
                                              .copyWith(
                                            fontSize: 24.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Text(
                                          'You are about to purchase item from Azuki collection.',
                                          style: regularTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            color: whiteColor.withOpacity(0.7),
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceMedium,
                                        ),
                                        Text(
                                          'Item',
                                          style: clashDisplayBoldTextStyle
                                              .copyWith(
                                            fontSize: 20.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 80.w,
                                          padding: EdgeInsets.all(16.w),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            border: Border.all(
                                              width: 1,
                                              color:
                                                  whiteColor.withOpacity(0.7),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 48.w,
                                                height: 48.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    8.r,
                                                  ),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/item_details/img_cube_collection.png'),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 180.w,
                                                    child: Text(
                                                      'NEO CUBE#381',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style:
                                                          clashDisplayBoldTextStyle,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4.w,
                                                  ),
                                                  Text(
                                                    '9000 SAR',
                                                    style: mediumTextStyle
                                                        .copyWith(
                                                      color: whiteColor
                                                          .withOpacity(0.7),
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceMedium,
                                        ),
                                        Text(
                                          'Payment Method',
                                          style: clashDisplayBoldTextStyle
                                              .copyWith(
                                            fontSize: 20.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 80.w,
                                          padding: EdgeInsets.all(16.w),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            border: Border.all(
                                              width: 1,
                                              color:
                                                  whiteColor.withOpacity(0.7),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 48.w,
                                                    height: 48.w,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        8.r,
                                                      ),
                                                      image:
                                                          const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/hesa/icon_hesa.png'),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 6.w,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 150.w,
                                                        child: Text(
                                                          'Hesa Wallet',
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style:
                                                              clashDisplayBoldTextStyle,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4.w,
                                                      ),
                                                      Text(
                                                        '1,000,000 SAR',
                                                        style: mediumTextStyle
                                                            .copyWith(
                                                          color: whiteColor
                                                              .withOpacity(0.7),
                                                          fontSize: 14.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 12.w,
                                                height: 12.w,
                                                child: const Image(
                                                  image: AssetImage(
                                                      'assets/icons/icon_arrow_down.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Text(
                                          'Payment Summary',
                                          style: clashDisplayBoldTextStyle
                                              .copyWith(
                                            fontSize: 20.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: (deviceWidth - 90.w) / 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'NEO CUBE#381',
                                                    style: regularTextStyle
                                                        .copyWith(
                                                      color: whiteColor
                                                          .withOpacity(0.7),
                                                      fontSize: 14.sp,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(
                                                    height: verticalSpaceSmall,
                                                  ),
                                                  Text(
                                                    'Transaction fee 15%',
                                                    style: regularTextStyle
                                                        .copyWith(
                                                      color: whiteColor
                                                          .withOpacity(0.7),
                                                      fontSize: 14.sp,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(
                                                    height: verticalSpaceSmall,
                                                  ),
                                                  Text(
                                                    'Service fee',
                                                    style: regularTextStyle
                                                        .copyWith(
                                                      color: whiteColor
                                                          .withOpacity(0.7),
                                                      fontSize: 14.sp,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(
                                                    height: verticalSpaceSmall,
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //NOTE: Value
                                            SizedBox(
                                              width: (deviceWidth - 90.w) / 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '800.00 SAR',
                                                    style: regularTextStyle
                                                        .copyWith(
                                                      fontSize: 14.sp,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(
                                                    height: verticalSpaceSmall,
                                                  ),
                                                  Text(
                                                    '120.00 SAR',
                                                    style: regularTextStyle
                                                        .copyWith(
                                                      fontSize: 14.sp,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(
                                                    height: verticalSpaceSmall,
                                                  ),
                                                  Text(
                                                    '10.00 SAR',
                                                    style: regularTextStyle
                                                        .copyWith(
                                                      fontSize: 14.sp,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 1,
                                          color: whiteColor,
                                        ),
                                        SizedBox(
                                          height: verticalSpaceSmall,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Total',
                                              style: regularTextStyle.copyWith(
                                                color:
                                                    whiteColor.withOpacity(0.7),
                                                fontSize: 14.sp,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Text(
                                              '930.00 SAR',
                                              style: regularTextStyle.copyWith(
                                                fontSize: 14.sp,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    //NOTE: Button Group
                                    Column(
                                      children: [
                                        CustomButton(
                                          width: double.infinity,
                                          height: 48.w,
                                          text: 'Purchase',
                                          onTap: () {
                                            Get.toNamed(
                                                // 'ItemDetailPurchasementSuccessPage');
                                                '/itemDetailPurchasementFailedPage');
                                          },
                                        ),
                                        SizedBox(
                                          height: verticalSpaceMedium,
                                        ),
                                        CustomButtonBorder(
                                          width: double.infinity,
                                          height: 48.w,
                                          text: 'Cancel',
                                          onTap: () {
                                            Get.back();
                                          },
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                  // Get.toNamed('/itemDetailPurchasePage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoreSingleButton extends StatelessWidget {
  MoreSingleButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  String title;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 40.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: whiteColor),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          title,
          style: semiBoldTextStyle,
        ),
      ),
    );
  }
}

class AboutCollectionExpanded extends StatelessWidget {
  AboutCollectionExpanded({
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
                    'About Collection',
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
              'Lorem ipsum dolor sit amet consectetur. Risus habitant interdum vivamus suspendisse neque elit dolor morbi ut.',
              style: regularTextStyle.copyWith(
                fontSize: 16.sp,
                color: whiteColor.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
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
              width: deviceWidth - 48.w,
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
                      Row(
                        children: [
                          Text(
                            'Hamzah Mashere',
                            style: clashDisplayBoldTextStyle.copyWith(
                              color: blueColor,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          SizedBox(
                            width: 16.w,
                            height: 16.w,
                            child: const Image(
                              image:
                                  AssetImage('assets/icons/icon_verified.png'),
                            ),
                          ),
                        ],
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
                      Row(
                        children: [
                          Text(
                            'Badawi.SAR',
                            style: clashDisplayBoldTextStyle.copyWith(
                              color: blueColor,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          SizedBox(
                            width: 16.w,
                            height: 16.w,
                            child: const Image(
                              image:
                                  AssetImage('assets/icons/icon_verified.png'),
                            ),
                          ),
                        ],
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
            Container(
              margin: EdgeInsets.only(bottom: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Contract Address',
                    style: regularTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    '0x1647...7332',
                    style: mediumTextStyle.copyWith(
                      color: blueColor,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            DetailsRowSingle(
              title: 'Token ID',
              value: '877',
            ),
            DetailsRowSingle(
              title: 'Token Standard',
              value: 'ERC-721',
            ),
            DetailsRowSingle(
              title: 'Blockchain',
              value: 'ETHEREUM',
            ),
          ],
        ),
      ),
    );
  }
}

class AssetPropertiesExpanded extends StatelessWidget {
  AssetPropertiesExpanded({
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
                    'Asset Properties',
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
            AssetPropertiesRowSingle(
              title: 'Clothes',
              value: 'Work vest',
            ),
            AssetPropertiesRowSingle(
              title: 'Eyes',
              value: 'Eyepatch',
            ),
            AssetPropertiesRowSingle(
              title: 'Hat',
              value: 'Sea Captain’s Hat',
            ),
            AssetPropertiesRowSingle(
              title: 'Background',
              value: 'Purple',
            ),
            AssetPropertiesRowSingle(
              title: 'Trait Count',
              value: '6',
            ),
            AssetPropertiesRowSingle(
              title: 'Fur',
              value: 'Tan',
            ),
            AssetPropertiesRowSingle(
              title: 'Mouth',
              value: 'Bored Unshaven',
            ),
            AssetPropertiesRowSingle(
              title: 'Earring',
              value: 'None',
            ),
          ],
        ),
      ),
    );
  }
}

class SalesActivityExpanded extends StatelessWidget {
  SalesActivityExpanded({
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
                    'Sales Activity',
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
            SalesActivitySingle(
              title: 'Sougen Genesis#123',
              byName: '@Sugen_Dad',
              toName: '@Jahari_Official',
              time: '24 minutes ago',
              price: '9,000 SAR',
            ),
            SalesActivitySingle(
              title: 'Sougen Genesis#123',
              byName: '@Sugen_Dad',
              toName: '@Jahari_Official',
              time: '24 minutes ago',
              price: '9,000 SAR',
            ),
            SalesActivitySingle(
              title: 'Sougen Genesis#123',
              byName: '@Sugen_Dad',
              toName: '@Jahari_Official',
              time: '24 minutes ago',
              price: '9,000 SAR',
            ),
          ],
        ),
      ),
    );
  }
}

class SalesActivitySingle extends StatelessWidget {
  SalesActivitySingle({
    Key? key,
    required this.title,
    required this.byName,
    required this.toName,
    required this.price,
    required this.time,
  }) : super(key: key);

  String title, byName, toName, price, time;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: clashDisplayBoldTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    'Place a bid',
                    style: mediumTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'By: ',
                        style: mediumTextStyle.copyWith(fontSize: 12.sp),
                      ),
                      Text(
                        byName,
                        style: mediumTextStyle.copyWith(
                          fontSize: 12.sp,
                          color: whiteColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: clashDisplayBoldTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'To: ',
                        style: mediumTextStyle.copyWith(fontSize: 12.sp),
                      ),
                      Text(
                        toName,
                        style: mediumTextStyle.copyWith(
                          fontSize: 12.sp,
                          color: whiteColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    time,
                    style: mediumTextStyle.copyWith(
                      color: whiteColor.withOpacity(0.7),
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailsRowSingle extends StatelessWidget {
  DetailsRowSingle({
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
              color: whiteColor,
              fontSize: 14.sp,
            ),
          ),
          Text(
            value,
            style: mediumTextStyle.copyWith(
              color: whiteColor.withOpacity(0.7),
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class AssetPropertiesRowSingle extends StatelessWidget {
  AssetPropertiesRowSingle({
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
