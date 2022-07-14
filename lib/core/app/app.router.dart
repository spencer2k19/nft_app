// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../ui/screens/forgot_password/reset_password.dart';
import '../../ui/screens/home/tab_home.dart';
import '../../ui/screens/home/wallet/add_wallet.dart';
import '../../ui/screens/home/wallet/wallet_manage_screen.dart';
import '../../ui/screens/intro/intro.dart';
import '../../ui/screens/login/login.dart';
import '../../ui/screens/signup/signup.dart';
import '../../ui/screens/verification/email_verification.dart';
import '../../ui/screens/verification/phone_verification.dart';
import '../../ui/screens/verification/pin_code.dart';
import '../../ui/screens/verification/verify.dart';

class Routes {
  static const String intro = '/';
  static const String signup = '/Signup';
  static const String login = '/Login';
  static const String verify = '/Verify';
  static const String pinCode = '/pin-code';
  static const String phoneVerification = '/phone-verification';
  static const String emailVerification = '/email-verification';
  static const String resetPassword = '/reset-password';
  static const String tabHome = '/tab-home';
  static const String walletManageScreen = '/wallet-manage-screen';
  static const String addWallet = '/add-wallet';
  static const all = <String>{
    intro,
    signup,
    login,
    verify,
    pinCode,
    phoneVerification,
    emailVerification,
    resetPassword,
    tabHome,
    walletManageScreen,
    addWallet,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.intro, page: Intro),
    RouteDef(Routes.signup, page: Signup),
    RouteDef(Routes.login, page: Login),
    RouteDef(Routes.verify, page: Verify),
    RouteDef(Routes.pinCode, page: PinCode),
    RouteDef(Routes.phoneVerification, page: PhoneVerification),
    RouteDef(Routes.emailVerification, page: EmailVerification),
    RouteDef(Routes.resetPassword, page: ResetPassword),
    RouteDef(Routes.tabHome, page: TabHome),
    RouteDef(Routes.walletManageScreen, page: WalletManageScreen),
    RouteDef(Routes.addWallet, page: AddWallet),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    Intro: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Intro(),
        settings: data,
      );
    },
    Signup: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Signup(),
        settings: data,
      );
    },
    Login: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Login(),
        settings: data,
      );
    },
    Verify: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Verify(),
        settings: data,
      );
    },
    PinCode: (data) {
      var args = data.getArgs<PinCodeArguments>(
        orElse: () => PinCodeArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PinCode(key: args.key),
        settings: data,
      );
    },
    PhoneVerification: (data) {
      var args = data.getArgs<PhoneVerificationArguments>(
        orElse: () => PhoneVerificationArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PhoneVerification(
          key: args.key,
          reset: args.reset,
        ),
        settings: data,
      );
    },
    EmailVerification: (data) {
      var args = data.getArgs<EmailVerificationArguments>(
        orElse: () => EmailVerificationArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmailVerification(key: args.key),
        settings: data,
      );
    },
    ResetPassword: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ResetPassword(),
        settings: data,
      );
    },
    TabHome: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TabHome(),
        settings: data,
      );
    },
    WalletManageScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const WalletManageScreen(),
        settings: data,
      );
    },
    AddWallet: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddWallet(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PinCode arguments holder class
class PinCodeArguments {
  final Key? key;
  PinCodeArguments({this.key});
}

/// PhoneVerification arguments holder class
class PhoneVerificationArguments {
  final Key? key;
  final bool? reset;
  PhoneVerificationArguments({this.key, this.reset = false});
}

/// EmailVerification arguments holder class
class EmailVerificationArguments {
  final Key? key;
  EmailVerificationArguments({this.key});
}
