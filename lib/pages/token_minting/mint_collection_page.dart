import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';

class MintCollectionPage extends StatefulWidget {
  const MintCollectionPage({super.key});

  @override
  State<MintCollectionPage> createState() => _MintCollectionPageState();
}

class _MintCollectionPageState extends State<MintCollectionPage> {
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
                          'Collection',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
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

                        //NOTE: Select Collection
                        Text(
                          'Select Collection',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: verticalSpaceSmall,
                        ),
                        GestureDetector(
                          onTap: () {},
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
                                  'Select Collection...',
                                  style: regularTextStyle.copyWith(
                                    color: whiteColor.withOpacity(0.2),
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
                        SizedBox(
                          height: verticalSpaceRegular,
                        ),

                        //NOTE: Properties
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Properties',
                              style: clashDisplayBoldTextStyle.copyWith(
                                  fontSize: 24.sp),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.dialog(
                                  barrierColor: Colors.transparent,
                                  const AddPropertiesForm(),
                                );
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 16.w,
                                    height: 16.w,
                                    child: const Image(
                                      image: AssetImage(
                                          'assets/icons/icon_add_circle.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    'Add property',
                                    style: regularTextStyle.copyWith(
                                      color: whiteColor.withOpacity(0.5),
                                      fontSize: 12.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: verticalSpaceSmall,
                        ),
                        Text(
                          'textual traits that show up as rectangles',
                          style: regularTextStyle.copyWith(
                            color: whiteColor.withOpacity(0.7),
                          ),
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
                  Get.toNamed('/mintInformationPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddPropertiesForm extends StatelessWidget {
  const AddPropertiesForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: BlurryContainer(
            blur: 3,
            elevation: 0,
            color: blackColor.withOpacity(0.9),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
            child: Container(),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 330.w,
            height: 470.w,
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
                padding: EdgeInsets.all(24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Properties',
                          style: clashDisplayBoldTextStyle.copyWith(
                              fontSize: 24.sp),
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
                        const CustomTextField(
                          title: 'Type',
                          hint: 'Character',
                        ),
                        const CustomTextField(
                          title: 'Name',
                          hint: 'Male',
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 16.w,
                              height: 16.w,
                              child: const Image(
                                image: AssetImage(
                                    'assets/icons/icon_add_circle.png'),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Add more',
                              style: regularTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.5),
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              height: verticalSpaceRegular,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //NOTE: Save Button
                    Column(
                      children: [
                        CustomButton(
                          width: double.infinity,
                          height: 48.w,
                          text: 'Save',
                          onTap: () {},
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
    );
  }
}
