// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neo_nft/pages/augmented_reality/about_ar_page.dart';
import 'package:neo_nft/pages/collection/collection_details_item_page.dart';
import 'package:neo_nft/pages/item_detail/item_detail_no_collection_page.dart';
import 'package:neo_nft/pages/item_detail/item_detail_page.dart';
import 'package:neo_nft/pages/item_detail/item_detail_purchasement_failed_page.dart';
import 'package:neo_nft/pages/item_detail/item_detail_purchasement_success_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_item_listing_failed_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_item_listing_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_item_listing_success_page.dart';
import 'package:neo_nft/pages/item_detail/sell_and_listing/item_detail_listing_fee_page.dart';
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
import 'package:neo_nft/pages/market_explorer/collection_art_page.dart';
import 'package:neo_nft/pages/market_explorer/collection_bids_page.dart';
import 'package:neo_nft/pages/market_explorer/collection_collectibles_page.dart';
import 'package:neo_nft/pages/market_explorer/market_explorer.dart';
import 'package:neo_nft/pages/support_faq/faq_page.dart';
import 'package:neo_nft/pages/support_faq/support_page.dart';
import 'package:neo_nft/pages/terms_conditions/terms_condition_page.dart';
import 'package:neo_nft/pages/token_minting/mint_category_page.dart';
import 'package:neo_nft/pages/token_minting/mint_collection_details_page.dart';
import 'package:neo_nft/pages/token_minting/mint_collection_page.dart';
import 'package:neo_nft/pages/token_minting/mint_collection_success_page.dart';
import 'package:neo_nft/pages/token_minting/mint_information_page.dart';
import 'package:neo_nft/pages/token_minting/mint_nft_details_page.dart';
import 'package:neo_nft/pages/token_minting/mint_nft_file_page.dart';
import 'package:neo_nft/pages/token_minting/mint_success_page.dart';
import 'package:neo_nft/pages/token_minting/mint_type_page%20copy.dart';
import 'package:neo_nft/pages/user_profile/user_edit_page.dart';
import 'package:neo_nft/pages/user_profile/user_profile_page.dart';
import 'package:neo_nft/pages/user_profile/user_settings_page.dart';
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
        // initialRoute: '/marketExplorer',
        initialRoute: '/onboarding',
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
            name: '/itemDetailNoCollectionPage',
            page: () => const ItemDetailNoCollectionPage(),
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
          GetPage(
            name: '/itemDetailItemListingPage',
            page: () => const ItemDetailItemListingPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailListingFeePage',
            page: () => const ItemDetailListingFeePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailListingSuccessPage',
            page: () => const ItemDetailItemListingSuccessPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/itemDetailListingFailedPage',
            page: () => const ItemDetailItemListingFailedPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: Collection
          GetPage(
            name: '/collectionDetailItem',
            page: () => const CollectionDetailsItemPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: User Profile
          GetPage(
            name: '/userProfilePage',
            page: () => const UserProfilePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/userSettingsPage',
            page: () => const UserSettingsPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/userEditPage',
            page: () => const UserEditPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: Token Minting
          GetPage(
            name: '/mintCategoryPage',
            page: () => const MintCategoryPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintTypePage',
            page: () => const MintTypePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintNftDetailsPage',
            page: () => const MintNftDetailsPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintNftFilePage',
            page: () => const MintNftFilePage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintCollectionPage',
            page: () => const MintCollectionPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintInformationPage',
            page: () => const MintInformationPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintSuccessPage',
            page: () => const MintSuccessPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintCollectionDetailsPage',
            page: () => const MintCollectionDetailsPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/mintCollectionSuccessPage',
            page: () => const MintCollectionSuccessPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: Augmented Reality
          GetPage(
            name: '/aboutARPage',
            page: () => const AboutARPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: Support & FAQ
          GetPage(
            name: '/supportPage',
            page: () => const SupportPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),
          GetPage(
            name: '/faqPage',
            page: () => const FaqPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
          ),

          //NOTE: Terms & Conditions
          GetPage(
            name: '/termsConditionsPage',
            page: () => const TermsConditionsPage(),
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
