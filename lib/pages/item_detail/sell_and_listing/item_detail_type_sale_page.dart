import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/item_sell_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';

class ItemDetailTypeSalePage extends StatefulWidget {
  const ItemDetailTypeSalePage({super.key});

  @override
  State<ItemDetailTypeSalePage> createState() => _ItemDetailTypeSalePageState();
}

class _ItemDetailTypeSalePageState extends State<ItemDetailTypeSalePage> {
  List<Widget> buttonList = [
    TypeSaleButton(
      title: 'Fixed Price',
      desc: 'A single digital asset belongs to no specific collection',
      imgSrc: 'assets/icons/icon_fixed_price.png',
      id: 0,
    ),
    TypeSaleButton(
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
      appBar: CustomAppbar('List Items\nfor sale'),
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
          ],
        ),
      ),
    );
  }
}

class TypeSaleButton extends StatefulWidget {
  TypeSaleButton({
    Key? key,
    required this.title,
    required this.desc,
    required this.imgSrc,
    required this.id,
  }) : super(key: key);

  String title, desc, imgSrc;
  int id;

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
