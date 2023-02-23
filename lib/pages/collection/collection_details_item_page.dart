import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/item_details_controller.dart';
import 'package:neo_nft/controllers/items_activity_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_warning.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/group_title.dart';

class CollectionDetailsItemPage extends StatefulWidget {
  const CollectionDetailsItemPage({super.key});

  @override
  State<CollectionDetailsItemPage> createState() =>
      _CollectionDetailsItemPageState();
}

class _CollectionDetailsItemPageState extends State<CollectionDetailsItemPage> {
  //NOTE: Controllers
  final AboutController aboutController = Get.put(AboutController());
  final DetailsController detailsController = Get.put(DetailsController());
  final ItemsActivityController itemsActivityController =
      Get.put(ItemsActivityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      // resizeToAvoidBottomInset: false,
      body: CustomScaffoldBody(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 280.w,
                          child: Container(
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
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 80.h,
                            height: 80.h,
                            margin: EdgeInsets.only(left: 24.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/item_details/img_cube_collection.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.w),
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //NOTE: Button Back
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

                            //NOTE: Button More
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
                                          padding: const EdgeInsets.all(0),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          child: Container(
                                            width: 220.w,
                                            height: 128.w,
                                            padding: EdgeInsets.all(8.w),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: whiteColor
                                                      .withOpacity(0.1)),
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                MoreSingleButton(
                                                  title: 'Edit',
                                                  onTap: () {},
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 64.w,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8.w),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 1,
                                                          color: whiteColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.r),
                                                    ),
                                                    child: Text(
                                                      'View on Blockchain Explorer',
                                                      style: semiBoldTextStyle,
                                                    ),
                                                  ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceWidth - 160.w,
                            child: Text(
                              'Sougen Genesis Collection',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                            height: 20.w,
                            child: const Image(
                                image: AssetImage(
                                    'assets/icons/icon_verified.png')),
                          ),
                        ],
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

                            //NOTE: Button Report / Button Flag
                            GestureDetector(
                              child: SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/icon_flag.png',
                                  ),
                                ),
                              ),
                              onTap: () {
                                Get.bottomSheet(
                                  barrierColor: Colors.transparent,
                                  elevation: 0,
                                  ListView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          BlurryContainer(
                                            blur: 3,
                                            elevation: 0,
                                            color: blurryBGColor,
                                            padding: const EdgeInsets.all(0),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.r),
                                              topRight: Radius.circular(24.r),
                                            ),
                                            child: Container(
                                              width: deviceWidth,
                                              height: 447.w,
                                              padding: EdgeInsets.only(
                                                top: 8.w,
                                                left: 24.w,
                                                right: 24.w,
                                                bottom: 32.w,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: whiteColor
                                                        .withOpacity(0.1)),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.r),
                                                  topRight:
                                                      Radius.circular(24.r),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 134.w,
                                                            height: 5.w,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: whiteColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.r),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            verticalSpaceMedium,
                                                      ),
                                                      Text(
                                                        'Report this item',
                                                        style:
                                                            clashDisplayBoldTextStyle
                                                                .copyWith(
                                                                    fontSize:
                                                                        24.sp),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            verticalSpaceRegular,
                                                      ),

                                                      //NOTE: Reason Dropdown
                                                      Text(
                                                        'Reason',
                                                        style:
                                                            clashDisplayBoldTextStyle,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            verticalSpaceSmall,
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 48.w,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 16.w,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            width: 1,
                                                            color: whiteColor
                                                                .withOpacity(
                                                                    0.7),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.r),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Select a reason',
                                                              style:
                                                                  regularTextStyle,
                                                            ),
                                                            SizedBox(
                                                              width: 24.w,
                                                              height: 24.w,
                                                              child:
                                                                  const Image(
                                                                image: AssetImage(
                                                                    'assets/icons/icon_arrow_down.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            verticalSpaceMedium,
                                                      ),

                                                      //NOTE: addtictional Comments
                                                      Text(
                                                        'Addictional Comments',
                                                        style:
                                                            clashDisplayBoldTextStyle,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            verticalSpaceSmall,
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 120.w,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    16.w),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            width: 1,
                                                            color: whiteColor
                                                                .withOpacity(
                                                                    0.7),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.r),
                                                        ),
                                                        child: TextField(
                                                          cursorColor:
                                                              whiteColor,
                                                          style:
                                                              regularTextStyle,
                                                          maxLines: 5,
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintStyle:
                                                                regularTextStyle
                                                                    .copyWith(
                                                              color: whiteColor
                                                                  .withOpacity(
                                                                      0.2),
                                                            ),
                                                            hintText:
                                                                'Explain why you are concerned about this item',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  CustomButtonWarning(
                                                    width: double.infinity,
                                                    height: 48.w,
                                                    text: 'Report',
                                                    onTap: () {
                                                      //NOTE: Dialog Report Submitted
                                                      Get.dialog(
                                                        barrierColor:
                                                            Colors.transparent,
                                                        Stack(
                                                          children: [
                                                            BlurryContainer(
                                                              blur: 3,
                                                              elevation: 0,
                                                              color: blackColor
                                                                  .withOpacity(
                                                                      0.9),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8.r),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.r),
                                                              ),
                                                              child:
                                                                  Container(),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                width: 330.w,
                                                                height: 338.w,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.r),
                                                                  border: Border
                                                                      .all(
                                                                    width: 1,
                                                                    color: whiteColor
                                                                        .withOpacity(
                                                                            0.2),
                                                                  ),
                                                                ),
                                                                child:
                                                                    BlurryContainer(
                                                                  blur: 5,
                                                                  elevation: 0,
                                                                  color: whiteColor
                                                                      .withOpacity(
                                                                          0.1),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.r),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .all(24
                                                                            .w),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Column(
                                                                          children: [
                                                                            SizedBox(
                                                                              width: 64.w,
                                                                              height: 64.w,
                                                                              child: const Image(
                                                                                image: AssetImage('assets/icons/icon_report_success.png'),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 24.w,
                                                                            ),
                                                                            Text(
                                                                              'Report Submitted',
                                                                              style: clashDisplayBoldTextStyle.copyWith(
                                                                                fontSize: 24.sp,
                                                                                color: whiteColor,
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                            SizedBox(
                                                                              height: verticalSpaceSmall,
                                                                            ),
                                                                            Text(
                                                                              'Thank you, your report will be reviewed by our team.',
                                                                              style: regularTextStyle.copyWith(
                                                                                fontSize: 14.sp,
                                                                                color: whiteColor.withOpacity(0.7),
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          children: [
                                                                            CustomButton(
                                                                              width: double.infinity,
                                                                              height: 48.w,
                                                                              text: 'Done',
                                                                              onTap: () {
                                                                                Get.back();
                                                                                Get.back();
                                                                              },
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                    ],
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    children: [
                      Text(
                        'Hamzah Mashere',
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
                  height: verticalSpaceRegular,
                ),
                const GroupTitle(title: 'Description'),
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
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
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
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: horizontalSpace,
                            ),
                            width: 112.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 16.w,
                                  height: 16.w,
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/icons/icon_twitter.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16.w,
                                  height: 16.w,
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/icons/icon_instagram.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16.w,
                                  height: 16.w,
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/icons/icon_discord.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16.w,
                                  height: 16.w,
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/icons/icon_telegram.png',
                                    ),
                                  ),
                                ),
                              ],
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

                //NOTE: items, owner, floor price, traded
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                  child: SizedBox(
                    height: 40.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Items',
                              style: mediumTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '5,56k',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                          ],
                        ),
                        Container(
                          width: 1.w,
                          height: double.infinity,
                          color: cyanColor,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Owners',
                              style: mediumTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '14,2k',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                          ],
                        ),
                        Container(
                          width: 1.w,
                          height: double.infinity,
                          color: cyanColor,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Floor Price',
                              style: mediumTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '4kSAR',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                          ],
                        ),
                        Container(
                          width: 1.w,
                          height: double.infinity,
                          color: cyanColor,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Traded',
                              style: mediumTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '45kSAR',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                          ],
                        ),
                      ],
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
                          });
                        },
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            detailsController.expandedDetails.value =
                                !detailsController.expandedDetails.value;
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

                //NOTE: items, activity
                SizedBox(
                  height: verticalSpaceRegular,
                ),
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: horizontalSpace),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          itemsActivityController.selectedButton.value = 0;
                        },
                        child: Obx(
                          () => SizedBox(
                            width: deviceWidth / 2,
                            height: 35.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                itemsActivityController.selectedButton.value ==
                                        0
                                    ? Text(
                                        'Items',
                                        style: clashDisplayBoldTextStyle,
                                      )
                                    : Text(
                                        'Items',
                                        style:
                                            clashDisplayBoldTextStyle.copyWith(
                                          color: whiteColor.withOpacity(0.7),
                                        ),
                                      ),
                                itemsActivityController.selectedButton.value ==
                                        0
                                    ? Container(
                                        height: 2,
                                        color: cyanColor,
                                      )
                                    : Container(
                                        height: 2,
                                        color: Colors.transparent,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          itemsActivityController.selectedButton.value = 1;
                        },
                        child: Obx(
                          () => SizedBox(
                            width: deviceWidth / 2,
                            height: 35.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                itemsActivityController.selectedButton.value ==
                                        1
                                    ? Text(
                                        'Activity',
                                        style: clashDisplayBoldTextStyle,
                                      )
                                    : Text(
                                        'Activity',
                                        style:
                                            clashDisplayBoldTextStyle.copyWith(
                                          color: whiteColor.withOpacity(0.7),
                                        ),
                                      ),
                                itemsActivityController.selectedButton.value ==
                                        1
                                    ? Container(
                                        height: 2,
                                        color: cyanColor,
                                      )
                                    : Container(
                                        height: 2,
                                        color: Colors.transparent,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: verticalSpaceRegular,
                ),

                //NOTE: Discovery, activity chart
                Obx(
                  () => Container(
                    child: itemsActivityController.selectedButton.value == 0
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const GroupTitle(title: 'Discovery'),
                                  Container(
                                    height: 18.w,
                                    margin: EdgeInsets.only(
                                      right: horizontalSpace,
                                      bottom: verticalSpaceMedium,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 24.w),
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
                                  ],
                                ),
                              ),
                            ],
                          )
                        :
                        //NOTE: activity chart will be placed here
                        Container(),
                  ),
                ),

                SizedBox(
                  height: 100.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MoreSingleButton extends StatelessWidget {
  const MoreSingleButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final void Function() onTap;
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
  const AboutCollectionExpanded({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function() onTap;
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
  const DetailsExpanded({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function() onTap;
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
                            'assets/images/market_explorer/img_discover.png'),
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
          ],
        ),
      ),
    );
  }
}
