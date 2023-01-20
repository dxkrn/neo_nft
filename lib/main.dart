import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/pages/item_detail/item_detail_page.dart';
import 'package:neo_nft/pages/item_detail/item_detail_purchasement_failed_page.dart';
import 'package:neo_nft/pages/item_detail/item_detail_purchasement_success_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_promote_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_sale_info_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_type_sale_page.dart';
import 'package:neo_nft/pages/login_registration/faceid_page.dart';
import 'package:neo_nft/pages/login_registration/fingerid_page.dart';
import 'package:neo_nft/pages/login_registration/onboarding.dart';
import 'package:neo_nft/pages/login_registration/signin_page.dart';
import 'package:neo_nft/pages/login_registration/signin_with_email_page.dart';
import 'package:neo_nft/pages/login_registration/signup_page.dart';
import 'package:neo_nft/pages/login_registration/signup_with_email_page.dart';
import 'package:neo_nft/pages/market_explorer/CollectionArtPage.dart';
import 'package:neo_nft/pages/market_explorer/CollectionBidsPage.dart';
import 'package:neo_nft/pages/market_explorer/CollectionCollectiblesPage.dart';
import 'package:neo_nft/pages/market_explorer/market_explorer.dart';
import 'package:neo_nft/pages/wallet_settings/add_bank_page.dart';
import 'package:neo_nft/pages/wallet_settings/add_card_page.dart';
import 'package:neo_nft/pages/wallet_settings/connect_wallet_page.dart';
import 'package:neo_nft/pages/wallet_settings/empty_state_page.dart';
import 'package:neo_nft/pages/wallet_settings/otp_verification_page.dart';
import 'package:neo_nft/pages/wallet_settings/wallet_page.dart';

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
        initialRoute: '/marketExplorer',
        // initialRoute: '/onboarding',
        getPages: [
          //NOTE : Login and Registration
          GetPage(
            name: '/onboarding',
            page: () => const Onboarding(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/signupPage',
            page: () => const SignupPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/signupWithEmailPage',
            page: () => const SignupWithEmailPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/faceIDPage',
            page: () => const FaceIDPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/fingerIDPage',
            page: () => const FingerIDPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/signinPage',
            page: () => const SigninPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/signinWithEmailPage',
            page: () => const SigninWithEmailPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE : Wallet Settings
          GetPage(
            name: '/emptyStatePage',
            page: () => const EmptyStatePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/connectWalletPage',
            page: () => const ConnectWalletPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/walletPage',
            page: () => const WalletPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/addCardPage',
            page: () => const AddCardPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/addBankPage',
            page: () => const AddBankPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/otpVerificationPage',
            page: () => const OTPVerificationPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE : Market Explorer Pages
          GetPage(
            name: '/marketExplorer',
            page: () => const MarketExplorer(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/collectionArtPage',
            page: () => const CollectionArtPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/collectionBidsPage',
            page: () => const CollectionBidsPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/collectionCollectiblesPage',
            page: () => const CollectionCollectiblesPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: Details
          GetPage(
            name: '/itemDetail',
            page: () => const ItemDetailPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailPurchasementSuccessPage',
            page: () => const ItemDetailPurchasementSuccessPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailPurchasementFailedPage',
            page: () => const ItemDetailPurchasementFailedPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailPromotePage',
            page: () => const ItemDetailPromotePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailTypeSalePage',
            page: () => const ItemDetailTypeSalePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailSaleInfoPage',
            page: () => const ItemDetailSaleInfoPage(),
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
