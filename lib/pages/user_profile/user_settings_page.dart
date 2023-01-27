import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';

class UserSettingsPage extends StatelessWidget {
  const UserSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('More'),
      body: Center(
        child: Stack(
          children: [
            const CommonBackground(),
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(
                  top: verticalSpaceRegular,
                  left: horizontalSpace,
                  right: horizontalSpace,
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SingleSettingsButton(
                      title: 'About Neo',
                      imgSrc: 'assets/icons/user_settings/icon_about.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'FAQ & Support',
                      imgSrc: 'assets/icons/user_settings/icon_faq.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'Term and Conditions',
                      imgSrc: 'assets/icons/user_settings/icon_term.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'Twitter',
                      imgSrc: 'assets/icons/user_settings/icon_twitter.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'Instagram',
                      imgSrc: 'assets/icons/user_settings/icon_instagram.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'Discord',
                      imgSrc: 'assets/icons/user_settings/icon_discord.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'Telegram',
                      imgSrc: 'assets/icons/user_settings/icon_telegram.png',
                      onTap: () {},
                    ),
                    SingleSettingsButton(
                      title: 'Log Out',
                      imgSrc: 'assets/icons/user_settings/icon_logout.png',
                      onTap: () {},
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

class SingleSettingsButton extends StatelessWidget {
  const SingleSettingsButton({
    Key? key,
    required this.title,
    required this.imgSrc,
    required this.onTap,
  }) : super(key: key);

  final String title, imgSrc;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.w,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        margin: EdgeInsets.only(bottom: 16.w),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: whiteColor.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                  height: 24.w,
                  child: Image(image: AssetImage(imgSrc)),
                ),
                SizedBox(
                  width: 16.w,
                ),
                SizedBox(
                  child: Text(
                    title,
                    style: semiBoldTextStyle,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 24.w,
              height: 24.w,
              child: const Image(
                  image: AssetImage('assets/icons/icon_arrow_right.png')),
            ),
          ],
        ),
      ),
    );
  }
}
