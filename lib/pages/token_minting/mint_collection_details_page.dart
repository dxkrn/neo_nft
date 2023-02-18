import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/custom_file_input_field.dart';
import 'package:neo_nft/widgets/custom_scaffold_body.dart';
import 'package:neo_nft/widgets/custom_text_field.dart';

class MintCollectionDetailsPage extends StatefulWidget {
  const MintCollectionDetailsPage({super.key});

  @override
  State<MintCollectionDetailsPage> createState() =>
      _MintCollectionDetailsPageState();
}

class _MintCollectionDetailsPageState extends State<MintCollectionDetailsPage> {
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
                          'Collection details',
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
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const CustomTextField(
                                title: 'Title',
                                hint: 'Write your Collection title...'),
                            const CustomTextField(
                              title: 'Description',
                              hint: 'Write your Collection description...',
                              maxLines: 5,
                            ),
                            CustomFileInputField(
                              title: 'Upload Your Collection Logo',
                              hint: 'Choose File',
                              onTap: () {
                                //NOTE: Some Function to Upload File
                              },
                            ),
                            CustomFileInputField(
                              title: 'Upload Your Collection Banner',
                              hint: 'Choose File',
                              onTap: () {
                                //NOTE: Some Function to Upload File
                              },
                            ),
                          ],
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
                  Get.toNamed('/mintCollectionSuccessPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
