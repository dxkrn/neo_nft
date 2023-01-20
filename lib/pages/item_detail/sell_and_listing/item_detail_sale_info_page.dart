import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';

class ItemDetailSaleInfoPage extends StatefulWidget {
  const ItemDetailSaleInfoPage({super.key});

  @override
  State<ItemDetailSaleInfoPage> createState() => _ItemDetailSaleInfoPageState();
}

class _ItemDetailSaleInfoPageState extends State<ItemDetailSaleInfoPage> {
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
                        'Sale Info',
                        style:
                            clashDisplayBoldTextStyle.copyWith(fontSize: 24.sp),
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ultrices arcu.',
                        style: regularTextStyle.copyWith(
                          color: whiteColor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: verticalSpaceRegular,
                      ),
                      Text(
                        'Price',
                        style: clashDisplayBoldTextStyle,
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Container(
                        width: double.infinity,
                        height: 48.w,
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              width: 1, color: whiteColor.withOpacity(0.7)),
                        ),
                        child: TextField(
                          cursorColor: whiteColor,
                          style: regularTextStyle,
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.2),
                            ),
                            hintText: 'Enter price...',
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'SAR',
                                  style: semiBoldTextStyle.copyWith(
                                    color: whiteColor.withOpacity(0.7),
                                    fontSize: 14.sp,
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
                      Text(
                        'Duration',
                        style: clashDisplayBoldTextStyle,
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Container(
                        width: double.infinity,
                        height: 48.w,
                        padding: EdgeInsets.only(left: 4.w, right: 16.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              width: 1, color: whiteColor.withOpacity(0.7)),
                        ),
                        child: TextField(
                          cursorColor: whiteColor,
                          style: regularTextStyle,
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.2),
                            ),
                            hintText: 'Enter duration',
                            prefixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 24.w,
                                  height: 24.w,
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/icons/icon_calendar.png'),
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
                      Text(
                        'Fees',
                        style: clashDisplayBoldTextStyle,
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Service fee',
                            style: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.7),
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            '2.5%',
                            style: regularTextStyle.copyWith(
                              color: whiteColor,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Creator fee',
                            style: regularTextStyle.copyWith(
                              color: whiteColor.withOpacity(0.7),
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            '3%',
                            style: regularTextStyle.copyWith(
                              color: whiteColor,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
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
                  Get.toNamed('/itemDetailTypeSalePage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
