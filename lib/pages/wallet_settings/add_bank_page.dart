import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/common_background.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';

class AddBankPage extends StatelessWidget {
  const AddBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (() {
                Get.back();
              }),
              child: Container(
                margin: EdgeInsets.all(10.w),
                width: 40.h,
                height: 40.h,
                // color: whiteColor,
                child: const Image(
                  image: AssetImage('assets/icons/icon_back.png'),
                ),
              ),
            ),
            Text(
              'Banking Details',
              style: clashDisplayBoldTextStyle.copyWith(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 45.h,
              height: 32.h,
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            const CommonBackground(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  // top: 80.h,
                  left: horizontalSpace,
                  right: horizontalSpace,
                  bottom: 50.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: verticalSpaceRegular,
                        ),
                        CustomTextField(
                          title: 'Bank Name',
                          hint: 'Enter bank name...',
                        ),
                        CustomTextField(
                          title: 'Account IBAN Number',
                          hint: 'Enter account IBAN number...',
                          isNumber: true,
                        ),
                        CustomTextField(
                          title: 'Account Holder Name',
                          hint: 'Enter account holder name...',
                        ),
                      ],
                    ),
                    CustomButton(
                      width: deviceWidth,
                      height: 48.w,
                      text: 'Save Information',
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
