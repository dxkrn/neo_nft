import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/controllers/signup_controller.dart';
import 'package:neo_nft/theme.dart';

class CustomPasswordTextField extends StatefulWidget {
  CustomPasswordTextField({
    Key? key,
    required this.title,
    required this.hint,
  }) : super(key: key);

  String title, hint;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  //NOTE: Password Controller
  final SignupPasswordController signupPasswordController =
      Get.put(SignupPasswordController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: clashDisplayBoldTextStyle,
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          width: deviceWidth,
          height: 48.w,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          margin: EdgeInsets.only(
            bottom: verticalSpaceMedium,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              width: 1,
              color: whiteColor.withOpacity(0.3),
            ),
          ),
          child: Obx(
            () => TextField(
              cursorColor: whiteColor,
              style: regularTextStyle,
              obscureText: signupPasswordController.isHidden.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: regularTextStyle.copyWith(
                  color: whiteColor.withOpacity(0.2),
                ),
                hintText: widget.hint,
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    signupPasswordController.isHidden.value
                        ? GestureDetector(
                            child: SizedBox(
                              width: 24.w,
                              height: 24.w,
                              child: const Image(
                                image: AssetImage(
                                    'assets/icons/icon_eye_closed.png'),
                              ),
                            ),
                            onTap: () {
                              signupPasswordController.isHidden.value =
                                  !signupPasswordController.isHidden.value;
                            },
                          )
                        : GestureDetector(
                            child: SizedBox(
                              width: 24.w,
                              height: 24.w,
                              child: const Image(
                                image: AssetImage('assets/icons/icon_eye.png'),
                              ),
                            ),
                            onTap: () {
                              signupPasswordController.isHidden.value =
                                  !signupPasswordController.isHidden.value;
                            },
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

class CustomConfirmPasswordTextField extends StatefulWidget {
  CustomConfirmPasswordTextField({
    Key? key,
    required this.title,
    required this.hint,
  }) : super(key: key);

  String title, hint;

  @override
  State<CustomConfirmPasswordTextField> createState() =>
      _CustomConfirmPasswordTextField();
}

class _CustomConfirmPasswordTextField
    extends State<CustomConfirmPasswordTextField> {
  //NOTE: Password Controller
  final SignupConfirmPasswordController signupConfirmPasswordController =
      Get.put(SignupConfirmPasswordController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: clashDisplayBoldTextStyle,
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          width: deviceWidth,
          height: 48.w,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          margin: EdgeInsets.only(
            bottom: verticalSpaceMedium,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              width: 1,
              color: whiteColor.withOpacity(0.3),
            ),
          ),
          child: Obx(
            () => TextField(
              cursorColor: whiteColor,
              style: regularTextStyle,
              obscureText: signupConfirmPasswordController.isHidden.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: regularTextStyle.copyWith(
                  color: whiteColor.withOpacity(0.2),
                ),
                hintText: widget.hint,
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    signupConfirmPasswordController.isHidden.value
                        ? GestureDetector(
                            child: SizedBox(
                              width: 24.w,
                              height: 24.w,
                              child: const Image(
                                image: AssetImage(
                                    'assets/icons/icon_eye_closed.png'),
                              ),
                            ),
                            onTap: () {
                              signupConfirmPasswordController.isHidden.value =
                                  !signupConfirmPasswordController
                                      .isHidden.value;
                            },
                          )
                        : GestureDetector(
                            child: SizedBox(
                              width: 24.w,
                              height: 24.w,
                              child: const Image(
                                image: AssetImage('assets/icons/icon_eye.png'),
                              ),
                            ),
                            onTap: () {
                              signupConfirmPasswordController.isHidden.value =
                                  !signupConfirmPasswordController
                                      .isHidden.value;
                            },
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
