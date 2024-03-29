import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/item_sell_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_button_border.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';

class ItemDetailListingFeePage extends StatefulWidget {
  const ItemDetailListingFeePage({super.key});

  @override
  State<ItemDetailListingFeePage> createState() =>
      _ItemDetailListingFeePageState();
}

class _ItemDetailListingFeePageState extends State<ItemDetailListingFeePage> {
  List<Widget> buttonList = [
    const TypeSaleButton(
      title: 'Fixed Price',
      desc: 'A single digital asset belongs to no specific collection',
      imgSrc: 'assets/icons/icon_fixed_price.png',
      id: 0,
    ),
    const TypeSaleButton(
      title: 'Timed Auction',
      desc: 'Create a collection of specific digital assets',
      imgSrc: 'assets/icons/icon_timed_auction.png',
      id: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      // appBar: CustomAppbar('List Items\nfor sale'),
      body: CustomScaffoldBody(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 32.w,
                    left: 24.w,
                    right: 24.w,
                    bottom: 50.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Type of Sale',
                        style:
                            clashDisplayBoldTextStyle.copyWith(fontSize: 24.sp),
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Risus habitant interdum vivamus.',
                        style: regularTextStyle.copyWith(
                          color: whiteColor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: verticalSpaceRegular,
                      ),
                      Column(
                        children: buttonList,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 16.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Continue',
                onTap: () {
                  Get.toNamed('/itemDetailSaleInfoPage');
                },
              ),
            ),
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
                  // vertical: 50.w,
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 330.w,
                        height: 730.w,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Listing Fee',
                                      style: clashDisplayBoldTextStyle.copyWith(
                                        fontSize: 24.sp,
                                        color: whiteColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: verticalSpaceSmall,
                                    ),
                                    Text(
                                      'In order to complete your listing, please confirm by completing the payment of our Platform Listing Fee Service.',
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
                                      style: clashDisplayBoldTextStyle.copyWith(
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
                                          color: whiteColor.withOpacity(0.7),
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
                                                style: mediumTextStyle.copyWith(
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
                                      style: clashDisplayBoldTextStyle.copyWith(
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
                                          color: whiteColor.withOpacity(0.7),
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
                                                  image: const DecorationImage(
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
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 150.w,
                                                    child: Text(
                                                      'Hesa Wallet',
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
                                      style: clashDisplayBoldTextStyle.copyWith(
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
                                                'Item listing',
                                                style:
                                                    regularTextStyle.copyWith(
                                                  color: whiteColor
                                                      .withOpacity(0.7),
                                                  fontSize: 14.sp,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(
                                                height: verticalSpaceSmall,
                                              ),
                                              Text(
                                                'Transaction fee 15%',
                                                style:
                                                    regularTextStyle.copyWith(
                                                  color: whiteColor
                                                      .withOpacity(0.7),
                                                  fontSize: 14.sp,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
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
                                                '5.00 SAR',
                                                style:
                                                    regularTextStyle.copyWith(
                                                  fontSize: 14.sp,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(
                                                height: verticalSpaceSmall,
                                              ),
                                              Text(
                                                '0.75 SAR',
                                                style:
                                                    regularTextStyle.copyWith(
                                                  fontSize: 14.sp,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(
                                                height: verticalSpaceSmall,
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
                                            color: whiteColor.withOpacity(0.7),
                                            fontSize: 14.sp,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '5.75 SAR',
                                          style: regularTextStyle.copyWith(
                                            fontSize: 14.sp,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: verticalSpaceMedium,
                                    ),
                                    Text(
                                      'In order to complete your listing, please confirm by completing the payment of our Platform Listing Fee Service.',
                                      style: regularTextStyle.copyWith(
                                        fontSize: 14.sp,
                                        color: whiteColor.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),

                                //NOTE: Button Group
                                Column(
                                  children: [
                                    CustomButton(
                                      width: double.infinity,
                                      height: 48.w,
                                      text: 'Pay',
                                      onTap: () {
                                        Get.toNamed(
                                            '/itemDetailListingFailedPage');
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TypeSaleButton extends StatefulWidget {
  const TypeSaleButton({
    Key? key,
    required this.title,
    required this.desc,
    required this.imgSrc,
    required this.id,
  }) : super(key: key);

  final String title, desc, imgSrc;
  final int id;

  @override
  State<TypeSaleButton> createState() => _TypeSaleButtonState();
}

class _TypeSaleButtonState extends State<TypeSaleButton> {
  //NOTE: Controller
  final ItemTypeSaleController itemTypeSaleController =
      Get.put(ItemTypeSaleController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemTypeSaleController.selectedButton.value = widget.id;
      },
      child: Obx(
        () => Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.w),
          margin: EdgeInsets.only(bottom: verticalSpaceMedium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              width: 1,
              color: widget.id != itemTypeSaleController.selectedButton.value
                  ? whiteColor.withOpacity(0.7)
                  : cyanColor,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 48.w,
                height: 48.w,
                child: Image(
                  image: AssetImage(
                    widget.imgSrc,
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: boldTextStyle,
                  ),
                  SizedBox(
                    width: deviceWidth - 150.w,
                    child: Text(
                      widget.desc,
                      style: mediumTextStyle.copyWith(
                        fontSize: 14.sp,
                        color: whiteColor.withOpacity(0.7),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
