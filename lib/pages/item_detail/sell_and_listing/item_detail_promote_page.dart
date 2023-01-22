import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/item_sell_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';

class ItemDetailPromotePage extends StatefulWidget {
  const ItemDetailPromotePage({super.key});

  @override
  State<ItemDetailPromotePage> createState() => _ItemDetailPromotePageState();
}

class _ItemDetailPromotePageState extends State<ItemDetailPromotePage> {
  List<Widget> buttonList = [
    const PromoteTypeButton(
      title: 'Mobile App Home Page Banner',
      id: 0,
    ),
    const PromoteTypeButton(
      title: 'Web Home Page Banner',
      id: 1,
    ),
    const PromoteTypeButton(
      title: 'Mobile App & Web Home Page Banner',
      id: 2,
    ),
    const PromoteTypeButton(
      title: 'Announce as Part of NEO NFT Newsletter Feeds',
      id: 3,
    ),
    const PromoteTypeButton(
      title: 'Push Notification',
      id: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Promote'),
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
                        'Promote Your Assets',
                        style:
                            clashDisplayBoldTextStyle.copyWith(fontSize: 24.sp),
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Text(
                        'Choose how you would like to promote your assets.',
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

class PromoteTypeButton extends StatefulWidget {
  const PromoteTypeButton({
    Key? key,
    required this.title,
    required this.id,
  }) : super(key: key);

  final String title;
  final int id;

  @override
  State<PromoteTypeButton> createState() => _PromoteTypeButtonState();
}

class _PromoteTypeButtonState extends State<PromoteTypeButton> {
  final ItemPromoteController itemPromoteController =
      Get.put(ItemPromoteController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemPromoteController.selectedButton.value = widget.id;
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
              color: widget.id != itemPromoteController.selectedButton.value
                  ? whiteColor.withOpacity(0.7)
                  : cyanColor,
            ),
          ),
          child: Text(
            widget.title,
            style: boldTextStyle,
          ),
        ),
      ),
    );
  }
}
