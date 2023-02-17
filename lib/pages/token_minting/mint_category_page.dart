import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/minting_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';

class MintCategoryPage extends StatefulWidget {
  const MintCategoryPage({super.key});

  @override
  State<MintCategoryPage> createState() => _MintCategoryPageState();
}

class _MintCategoryPageState extends State<MintCategoryPage> {
  List<Widget> buttonList = const [
    MintCategoryButton(
      title: 'Single',
      desc: 'A single digital asset belongs to no specific collection',
      imgSrc: 'assets/icons/icon_fixed_price.png',
      id: 0,
    ),
    MintCategoryButton(
      title: 'Collection',
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
      appBar: CustomAppbar('Start Minting'),
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
                        'Select mint category',
                        style:
                            clashDisplayBoldTextStyle.copyWith(fontSize: 24.sp),
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Text(
                        'A single item can not be added to a collection once it is minted. Creating a collection will allow you to add more items to your collection at any time in the future.',
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
                  Get.toNamed('/mintTypePage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MintCategoryButton extends StatefulWidget {
  const MintCategoryButton({
    Key? key,
    required this.title,
    required this.desc,
    required this.imgSrc,
    required this.id,
  }) : super(key: key);

  final String title, desc, imgSrc;
  final int id;

  @override
  State<MintCategoryButton> createState() => _MintCategoryButtonState();
}

class _MintCategoryButtonState extends State<MintCategoryButton> {
  //NOTE: Controller
  final MintCategorytController mintCategoryController =
      Get.put(MintCategorytController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        mintCategoryController.selectedButton.value = widget.id;
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
              color: widget.id != mintCategoryController.selectedButton.value
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
