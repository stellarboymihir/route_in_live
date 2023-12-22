import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/email_sign_up.dart';
import 'package:route_in_live/authentication/login_page.dart';
import 'package:route_in_live/authentication/register/findingid/find.dart';
import 'package:route_in_live/dashboard/dashboard.dart';
import 'package:route_in_live/dashboard/home/home.dart';
import 'package:route_in_live/values/MyColor.dart';

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
        homeRoute: (context) => const Home(),
      },
    );
  }
}
