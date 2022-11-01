import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/pages/login_registration/onboarding.dart';
import 'package:neo_nft/pages/market_explorer/market_explorer.dart';
import 'dart:ui' as ui;

import 'package:neo_nft/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff0D0013),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/onboarding',
        getPages: [
          GetPage(
            name: '/onboarding',
            page: () => const Onboarding(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/marketExplorer',
            page: () => const MarketExplorer(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
        ],
      ),
    );
  }
}
