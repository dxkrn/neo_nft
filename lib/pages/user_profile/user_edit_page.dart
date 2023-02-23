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
import 'package:neo_nft/widgets/custom_text_field.dart';
import 'package:neo_nft/widgets/group_title.dart';

class UserEditPage extends StatefulWidget {
  const UserEditPage({super.key});

  @override
  State<UserEditPage> createState() => _UserEditPagePageState();
}

class _UserEditPagePageState extends State<UserEditPage> {
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
                          child: Stack(
                            children: [
                              Container(
                                width: 80.w,
                                height: 80.w,
                                margin: EdgeInsets.only(left: 24.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/item_details/img_cube_collection.png'),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 24.w,
                                child: Container(
                                  width: 80.w,
                                  height: 80.w,
                                  color: blackColor.withOpacity(0.3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          margin: EdgeInsets.all(10.w),
                                          width: 32.w,
                                          height: 32.w,
                                          // color: whiteColor,
                                          child: const Image(
                                            image: AssetImage(
                                                'assets/icons/icon_image.png'),
                                          ),
                                        ),
                                        onTap: () {
                                          //Some function for edit photo
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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

                            //NOTE: Button Edit BG photo
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.all(10.w),
                                width: 32.w,
                                height: 32.w,
                                // color: whiteColor,
                                child: const Image(
                                  image:
                                      AssetImage('assets/icons/icon_image.png'),
                                ),
                              ),
                              onTap: () {
                                //Some function for edit photo
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: verticalSpaceMedium,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CustomTextField(
                          title: 'Username', hint: 'Theresa Webb'),
                      const CustomTextField(
                        title: 'About',
                        hint:
                            'Lorem ipsum dolor sit amet consectetur. Risus habitant interdum vivamus suspendisse neque elit dolor morbi ut.',
                        maxLines: 4,
                      ),
                      const CustomTextField(
                        title: 'Social Media Links',
                        hint: 'discord.com/TheresaWebb',
                        withIcon: true,
                        imgSrc: 'assets/icons/icon_discord.png',
                      ),
                      const CustomTextField(
                        title: '',
                        hint: 'twitter.com/TheresaWebb',
                        withTitle: false,
                        withIcon: true,
                        imgSrc: 'assets/icons/icon_twitter.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.w,
                ),
              ],
            ),
            Positioned(
              bottom: 16.w,
              left: 24.w,
              child: CustomButton(
                width: deviceWidth - 48.w,
                height: 48.w,
                text: 'Save Changes',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
