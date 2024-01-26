import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/email_sign_up.dart';
import 'package:route_in_live/authentication/login_page.dart';
import 'package:route_in_live/authentication/register/findingid/find.dart';
import 'package:route_in_live/dashboard/dashboard.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/allScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/feedScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/followingListScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/followingScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/likeScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/searchProduct.dart';
import 'package:route_in_live/dashboard/feed/MyScreen/editProfile.dart';
import 'package:route_in_live/dashboard/feed/MyScreen/myScreen.dart';
import 'package:route_in_live/dashboard/feed/MyScreen/searchPage.dart';
import 'package:route_in_live/dashboard/feed/notice.dart';
import 'package:route_in_live/dashboard/home/broadcast/liveBroad.dart';
import 'package:route_in_live/dashboard/home/collecting/collectingpreview.dart';
import 'package:route_in_live/dashboard/home/home.dart';
import 'package:route_in_live/dashboard/home/paysuccessful.dart';
import 'package:route_in_live/dashboard/home/purchase.dart';
import 'package:route_in_live/dashboard/home/regsiterbroadcast/LiveReservation.dart';
import 'package:route_in_live/dashboard/home/regsiterbroadcast/sellProduct.dart';
import 'package:route_in_live/dashboard/profile/Celebrity.dart';
import 'package:route_in_live/dashboard/profile/Edit/editInfo.dart';
import 'package:route_in_live/dashboard/profile/Info/Info.dart';
import 'package:route_in_live/dashboard/profile/ShoppingInfo/deliveryDestination.dart';
import 'package:route_in_live/dashboard/profile/notification/notification.dart';
import 'package:route_in_live/dashboard/profile/profile.dart';
import 'package:route_in_live/dashboard/profile/Edit/recommendedPerson.dart';
import 'package:route_in_live/dashboard/profile/Edit/resetPassword.dart';
import 'package:route_in_live/dashboard/profile/ShoppingInfo/shoppingInfo.dart';
import 'package:route_in_live/dashboard/profile/ShoppingInfo/trackingRoute.dart';
import 'package:route_in_live/dashboard/profile/Edit/withdrawalApp.dart';
import 'package:route_in_live/dashboard/profile/service/frequently.dart';
import 'package:route_in_live/dashboard/profile/service/noticeService.dart';
import 'package:route_in_live/dashboard/store/prodcutInfo.dart';
import 'package:route_in_live/dashboard/store/successfulPaid.dart';
import 'authentication/pass_sign_page.dart';
import 'authentication/permission/permission_page.dart';
import 'authentication/register/findingid/findingid.dart';
import 'authentication/register/findingid/id.dart';
import 'authentication/register/findingpass/findingemailpass.dart';
import 'authentication/register/findingpass/findingpass.dart';
import 'authentication/register/findingpass/resetpass.dart';
import 'authentication/register/profile/profile_settings.dart';
import 'authentication/self_verify.dart';
import 'authentication/splash_screen.dart';
import 'authentication/terms_condition_page.dart';
import 'constants/routes.dart';
import 'dashboard/feed/FeedScreen/Writing.dart';
import 'dashboard/feed/FeedScreen/comment.dart';
import 'dashboard/feed/feed.dart';
import 'dashboard/home/regsiterbroadcast/StoredItem.dart';
import 'dashboard/profile/ShoppingInfo/orderTracking.dart';
import 'dashboard/profile/Edit/pointRoute.dart';
import 'dashboard/profile/service/personal.dart';
import 'dashboard/profile/service/service.dart';
import 'dashboard/profile/service/terms.dart';
import 'dashboard/store/store.dart';
import 'dashboard/store/storePurchase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'NotoSansKR',
        // colorScheme: ColorScheme.fromSeed(
        //     seedColor: MyColor.orange)
        //     .copyWith(background: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        // Login Sign Up
        permissionRoute: (context) => const PermissionPage(),
        loginRoute: (context) => const LoginPage(),
        termsAndConditionRoute: (context) => const TermConditionPage(),
        emailSignUpRoute: (context) => const EmailSignUp(),
        passSignUpRoute: (context) => const PassSignUp(),
        selfVerifyRoute: (context) => const SelfVerificationPage(),
        profileSettingsRoute: (context) => const ProfileSettings(),
        idPassFindRoute: (context) => const Find(),
        idCertifyFindRoute: (context) => const FindingId(),
        showIdRoute: (context) => const ID(),
        passFindEmailRoute: (context) => const FindingEmailPass(),
        passFindRoute: (context) => const FindingPass(),
        resetPassRoute: (context) => const ResetPass(),

        //   ** DashBoard  **

        dashboardRoute: (context) => const Dashboard(),

        // ** Home **
        homeRoute: (context) => const Home(),
        commentRoute: (context) => const Comment(),
        noticeRoute: (context) => const Notice(),
        //  ** Register Broadcast **
        liveReservationRoute: (context) => const LiveReservation(),
        sellProductRoute: (context) => const SellProduct(),
        storeItemRoute: (context) => const StoredItem(),
        collectingPreviewRoute: (context) => const CollectingPreview(),
        liveBroadcastRoute: (context) => const LiveBroadcast(),
        purchaseRoute: (context) => const Purchase(),
        paySuccesRoute: (context) => const PaymentSuccesfull(),

        //   ** Feed **
        feedRoute: (context) => const Feed(),
        feedScreenRoute: (context) => const FeedScreen(),
        allScreenRoute: (context) => const AllScreen(),
        followingScreenRoute: (context) => const FollowingScreen(),
        followingListScreenRoute: (context) => const FollowingListScreen(),
        likeScreenRoute: (context) => const LikeScreen(),

        // ** MyScreen **
        myScreenRoute: (context) => const MyScreen(),
        searchPageRoute: (context) => const SearchPage(),
        writingRoute: (context) => const Writing(),
        editProfileRoute: (context) => const EditProfile(),
        searchProductRoute: (context) => const SearchProduct(),

        //   ** Store Route **
        storeRoute: (context) => const Store(),
        productInfoRoute: (context) => const ProductInformation(),
        storePurchaseRoute: (context) => const StorePurchase(),
        succesPaidRoute: (context) => const SuccessfulPaid(),

        // ** Profile Route **
        profileRoute: (context) => const Profile(),
        celebrityRoute: (context) => const CelebrityApp(),

        // ** Edit Info Route **
        editInfoRoute: (context) => const EditInformation(),
        resetPasswordRoute: (context) => const ResetPassword(),
        recommendedRoute: (context) => const RecommendedPerson(),
        pointRoute: (context) => const PointRoute(),
        withdrawalAppRoute: (context) => const WithdrawalApplication(),

        // ** Shopping Info Route **
        shoppingInfoRoute: (context) => const ShoppingInformation(),
        trackingRoute: (context) => const TrackingRoute(),
        orderTrackingRoute: (context) => const OrderTracking(),
        deliveryRoute: (context) => const Delivery(),

        //** Service **
        serviceRoute: (context) => const Service(),
        noticesServiceRoute: (context) => const NoticeService(),
        frequentlyRoute: (context) => const Frequently(),

        //  ** Notification Setting **
        notificationRoute: (context) => const SetNotification(),

        //   ** Service Information
        serviceInformationRoute: (context) => const Information(),
        termsRoute: (context) => const TermsPage(),
        personalRoute: (context) => const Personal(),
      },
    );
  }
}
