import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/item_details_controller.dart';
import 'package:neo_nft/controllers/user_profile_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/collection_card.dart';
import 'package:neo_nft/widgets/common_card.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_warning.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/group_title.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePagePageState();
}

class _UserProfilePagePageState extends State<UserProfilePage> {
  //NOTE: Controllers
  final AboutController aboutController = Get.put(AboutController());
  final DetailsController detailsController = Get.put(DetailsController());
  final UserProfileController userProfileController =
      Get.put(UserProfileController());

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
                            // width: deviceWidth - 160.w,
                            child: Text(
                              'RENGA',
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
                SizedBox(
                  height: 8.w,
                ),
                const GroupTitle(title: 'About'),
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

                //NOTE: collected, created, favourite
                SizedBox(
                  height: verticalSpaceRegular,
                ),
                SizedBox(
                  width: deviceWidth,
                  height: 35.w,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              userProfileController.selectedButton.value = 0;
                            },
                            child: Obx(
                              () => SizedBox(
                                width: deviceWidth / 2.5,
                                height: 35.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    userProfileController
                                                .selectedButton.value ==
                                            0
                                        ? Text(
                                            'Collected',
                                            style: clashDisplayBoldTextStyle,
                                          )
                                        : Text(
                                            'Collected',
                                            style: clashDisplayBoldTextStyle
                                                .copyWith(
                                              color:
                                                  whiteColor.withOpacity(0.7),
                                            ),
                                          ),
                                    userProfileController
                                                .selectedButton.value ==
                                            0
                                        ? Container(
                                            height: 2,
                                            color: cyanColor,
                                          )
                                        : Container(
                                            height: 1,
                                            color: whiteColor.withOpacity(0.7),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              userProfileController.selectedButton.value = 1;
                            },
                            child: Obx(
                              () => SizedBox(
                                width: deviceWidth / 2.5,
                                height: 35.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    userProfileController
                                                .selectedButton.value ==
                                            1
                                        ? Text(
                                            'Created',
                                            style: clashDisplayBoldTextStyle,
                                          )
                                        : Text(
                                            'Created',
                                            style: clashDisplayBoldTextStyle
                                                .copyWith(
                                              color:
                                                  whiteColor.withOpacity(0.7),
                                            ),
                                          ),
                                    userProfileController
                                                .selectedButton.value ==
                                            1
                                        ? Container(
                                            height: 2,
                                            color: cyanColor,
                                          )
                                        : Container(
                                            height: 1,
                                            color: whiteColor.withOpacity(0.7),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              userProfileController.selectedButton.value = 2;
                            },
                            child: Obx(
                              () => SizedBox(
                                width: deviceWidth / 2.5,
                                height: 35.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    userProfileController
                                                .selectedButton.value ==
                                            2
                                        ? Text(
                                            'Favourite',
                                            style: clashDisplayBoldTextStyle,
                                          )
                                        : Text(
                                            'Favourite',
                                            style: clashDisplayBoldTextStyle
                                                .copyWith(
                                              color:
                                                  whiteColor.withOpacity(0.7),
                                            ),
                                          ),
                                    userProfileController
                                                .selectedButton.value ==
                                            2
                                        ? Container(
                                            height: 2,
                                            color: cyanColor,
                                          )
                                        : Container(
                                            height: 1,
                                            color: whiteColor.withOpacity(0.7),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: verticalSpaceRegular,
                ),

                //NOTE: Items, collections, discovery
                //NOTE: Created (collections)
                CreatedCollections(
                    userProfileController: userProfileController),

                //NOTE: Collected (Items)
                CollectedItems(userProfileController: userProfileController),

                //NOTE: Favourite Discovery
                FavouriteDiscovery(
                    userProfileController: userProfileController),

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

//NOTE: Favourite Discovery
class FavouriteDiscovery extends StatelessWidget {
  const FavouriteDiscovery({
    Key? key,
    required this.userProfileController,
  }) : super(key: key);

  final UserProfileController userProfileController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: userProfileController.selectedButton.value == 2
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ItemsFilterButtons(),
                  SizedBox(
                    height: verticalSpaceMedium,
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
            : Container(),
      ),
    );
  }
}

//NOTE: Created Collections
class CreatedCollections extends StatelessWidget {
  const CreatedCollections({
    Key? key,
    required this.userProfileController,
  }) : super(key: key);

  final UserProfileController userProfileController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: userProfileController.selectedButton.value == 1
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GroupTitle(title: 'Collections'),
                  const ItemsFilterButtons(),
                  SizedBox(
                    height: verticalSpaceMedium,
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
                        CollectionCard(
                          title: 'Cube Collection',
                          imgSrc:
                              'assets/images/market_explorer/img_collection.png',
                          imgProfile:
                              'assets/images/market_explorer/img_top_seller.png',
                          pageName: '',
                          rightSpacing: false,
                        ),
                        CollectionCard(
                          title: 'Cube Collection',
                          imgSrc:
                              'assets/images/market_explorer/img_collection.png',
                          imgProfile:
                              'assets/images/market_explorer/img_top_seller.png',
                          pageName: '',
                          rightSpacing: false,
                        ),
                        CollectionCard(
                          title: 'Cube Collection',
                          imgSrc:
                              'assets/images/market_explorer/img_collection.png',
                          imgProfile:
                              'assets/images/market_explorer/img_top_seller.png',
                          pageName: '',
                          rightSpacing: false,
                        ),
                        CollectionCard(
                          title: 'Cube Collection',
                          imgSrc:
                              'assets/images/market_explorer/img_collection.png',
                          imgProfile:
                              'assets/images/market_explorer/img_top_seller.png',
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
              )
            : Container(),
      ),
    );
  }
}

//NOTE: Collected Items
class CollectedItems extends StatelessWidget {
  const CollectedItems({
    Key? key,
    required this.userProfileController,
  }) : super(key: key);

  final UserProfileController userProfileController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: userProfileController.selectedButton.value == 0 ||
                userProfileController.selectedButton.value == 1
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const GroupTitle(title: 'Items'),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ItemsFilterButtons(),
                  SizedBox(
                    height: verticalSpaceMedium,
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
            : Container(),
      ),
    );
  }
}

//NOTE: Items Buttons Controller
final ItemsButtonsController itemsButtonsController =
    Get.put(ItemsButtonsController());

class ItemsFilterButtons extends StatefulWidget {
  const ItemsFilterButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemsFilterButtons> createState() => _ItemsFilterButtonsState();
}

class _ItemsFilterButtonsState extends State<ItemsFilterButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceWidth,
      height: 34.w,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            children: [
              SizedBox(
                width: horizontalSpace,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 34.w,
                  height: 34.w,
                  padding: EdgeInsets.all(9.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000.r),
                      color: whiteColor),
                  child: const Image(
                      image: AssetImage('assets/icons/icon_setting_dark.png')),
                ),
              ),
              GestureDetector(
                onTap: () {
                  itemsButtonsController.selectedButton.value = 0;
                },
                child: Obx(
                  () => Container(
                    height: 34.w,
                    margin: EdgeInsets.only(left: 8.w),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: itemsButtonsController.selectedButton.value == 0
                          ? Border.all()
                          : Border.all(
                              width: 1,
                              color: whiteColor.withOpacity(0.7),
                            ),
                      borderRadius: BorderRadius.circular(1000.r),
                      color: itemsButtonsController.selectedButton.value == 0
                          ? cyanColor
                          : Colors.transparent,
                    ),
                    child: Text(
                      'All',
                      style: mediumTextStyle.copyWith(
                        fontSize: 12,
                        color: itemsButtonsController.selectedButton.value == 0
                            ? blackColor
                            : whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              const ItemsSingleButton(
                id: 1,
                title: 'Digital Arts',
                imgSrc: 'icon_digital_arts.png',
                imgSrcDark: 'icon_digital_arts_black.png',
              ),
              const ItemsSingleButton(
                id: 2,
                title: 'ANS',
                imgSrc: 'icon_ans.png',
                imgSrcDark: 'icon_ans_black.png',
              ),
              const ItemsSingleButton(
                id: 3,
                title: 'Digital Twins',
                imgSrc: 'icon_digital_twins.png',
                imgSrcDark: 'icon_digital_twins_black.png',
              ),
              const ItemsSingleButton(
                id: 4,
                title: 'Collectables',
                imgSrc: 'icon_collectibles.png',
                imgSrcDark: 'icon_collectibles_black.png',
              ),
              const ItemsSingleButton(
                id: 5,
                title: 'Music',
                imgSrc: 'icon_music.png',
                imgSrcDark: 'icon_music_black.png',
              ),
              const ItemsSingleButton(
                id: 6,
                title: 'Photography',
                imgSrc: 'icon_photography.png',
                imgSrcDark: 'icon_photography_black.png',
              ),
              const ItemsSingleButton(
                id: 7,
                title: 'Games',
                imgSrc: 'icon_games.png',
                imgSrcDark: 'icon_games_black.png',
              ),
              SizedBox(
                width: horizontalSpace,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemsSingleButton extends StatefulWidget {
  const ItemsSingleButton({
    Key? key,
    required this.title,
    required this.imgSrc,
    required this.imgSrcDark,
    required this.id,
  }) : super(key: key);
  final String title, imgSrc, imgSrcDark;
  final int id;

  @override
  State<ItemsSingleButton> createState() => _ItemsSingleButtonState();
}

class _ItemsSingleButtonState extends State<ItemsSingleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemsButtonsController.selectedButton.value = widget.id;
      },
      child: Obx(
        () => Container(
          height: 34.w,
          margin: EdgeInsets.only(left: 8.w),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: itemsButtonsController.selectedButton.value == widget.id
                ? Border.all()
                : Border.all(
                    width: 1,
                    color: whiteColor.withOpacity(0.7),
                  ),
            borderRadius: BorderRadius.circular(1000.r),
            color: itemsButtonsController.selectedButton.value == widget.id
                ? cyanColor
                : Colors.transparent,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 14.w,
                height: 14.w,
                child: Image(
                  image:
                      itemsButtonsController.selectedButton.value == widget.id
                          ? AssetImage(
                              'assets/icons/item_buttons/${widget.imgSrcDark}')
                          : AssetImage(
                              'assets/icons/item_buttons/${widget.imgSrc}'),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                widget.title,
                style: mediumTextStyle.copyWith(
                  fontSize: 12,
                  color:
                      itemsButtonsController.selectedButton.value == widget.id
                          ? blackColor
                          : whiteColor,
                ),
              ),
            ],
          ),
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
