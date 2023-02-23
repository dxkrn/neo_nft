import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/minting_controller.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';

class MintTypePage extends StatefulWidget {
  const MintTypePage({super.key});

  @override
  State<MintTypePage> createState() => _MintTypePageState();
}

class _MintTypePageState extends State<MintTypePage> {
  List<Widget> buttonList = const [
    MintTypeButton(
      title: 'Digital Art',
      imgSrc: 'assets/icons/icon_type_digital_art.png',
      id: 0,
    ),
    MintTypeButton(
      title: 'Poems',
      imgSrc: 'assets/icons/icon_type_poems.png',
      id: 1,
    ),
    MintTypeButton(
      title: 'Music',
      imgSrc: 'assets/icons/icon_type_music.png',
      id: 2,
    ),
    MintTypeButton(
      title: 'Stickers',
      imgSrc: 'assets/icons/icon_type_stickers.png',
      id: 3,
    ),
    MintTypeButton(
      title: 'Gifs',
      imgSrc: 'assets/icons/icon_type_gifs.png',
      id: 4,
    ),
    MintTypeButton(
      title: 'Images',
      imgSrc: 'assets/icons/icon_type_images.png',
      id: 5,
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
            SafeArea(
              child: ListView(
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
                          'Choose mint type',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: verticalSpaceSmall,
                        ),
                        Text(
                          'Choose asset(s) category [digital art, poems, music, stickers, gifs, images]',
                          style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          height: verticalSpaceRegular,
                        ),
                        Column(
                          children: buttonList,
                        ),
                        SizedBox(
                          height: 50.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Continue',
                onTap: () {
                  Get.toNamed('/mintNftDetailsPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MintTypeButton extends StatefulWidget {
  const MintTypeButton({
    Key? key,
    required this.title,
    required this.imgSrc,
    required this.id,
  }) : super(key: key);

  final String title, imgSrc;
  final int id;

  @override
  State<MintTypeButton> createState() => _MintTypeButtonState();
}

class _MintTypeButtonState extends State<MintTypeButton> {
  //NOTE: Controller
  final MintTypeController mintTypeController = Get.put(MintTypeController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        mintTypeController.selectedButton.value = widget.id;
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
              color: widget.id != mintTypeController.selectedButton.value
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
