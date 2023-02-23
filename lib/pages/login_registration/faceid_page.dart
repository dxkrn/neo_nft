import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:neo_nft/theme.dart';
import 'package:neo_nft/widgets/custom_appbar.dart';
import 'package:neo_nft/widgets/custom_button.dart';
import 'package:neo_nft/widgets/login_signup_background.dart';

class FaceIDPage extends StatelessWidget {
  const FaceIDPage({super.key});

  void runFaceBiometrics() async {
    print('runFaceBiometrics');
    final LocalAuthentication auth = LocalAuthentication();

    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await auth.isDeviceSupported();

    final List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();

    print('canAuthenticate: $canAuthenticate');
    print('availableBiometrics: $availableBiometrics');
    try {
      final bool didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to enable Face ID',
        options: const AuthenticationOptions(
          biometricOnly: true,
        ),
      );

      if (didAuthenticate) {
        Get.toNamed('/fingerIDPage');
      } else {
        Get.snackbar('Error', 'Biometrics authentication failed',
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red,
            margin: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w));
      }
    } on PlatformException {
      Get.snackbar('Error', 'Platform Biometrics authentication failed',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red,
          margin: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w));

      Get.toNamed('/fingerIDPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar('Face ID Set Up'),
      body: Center(
        child: Stack(
          children: [
            const LoginSignupBackground(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  // top: 80.h,
                  left: horizontalSpace,
                  right: horizontalSpace,
                  bottom: 50.h,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 64.w,
                            height: 64.w,
                            child: const Image(
                              image: AssetImage(
                                'assets/icons/icon_faceid.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: verticalSpaceRegular,
                          ),
                          SizedBox(
                            child: Text(
                              'Secure your Account',
                              style: clashDisplayBoldTextStyle.copyWith(
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          SizedBox(
                            width: deviceWidth - 48.w,
                            child: Text(
                              'We recommend you set up biometric lock to secure your account from any unwanted tampering.',
                              style: regularTextStyle.copyWith(
                                color: whiteColor.withOpacity(0.7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        width: deviceWidth - 48.w,
                        height: 48.w,
                        text: 'Start scan',
                        onTap: () {
                          runFaceBiometrics();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
