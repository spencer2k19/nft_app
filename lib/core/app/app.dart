
import 'package:nft_app/ui/screens/forgot_password/reset_password.dart';
import 'package:nft_app/ui/screens/intro/intro.dart';
import 'package:nft_app/ui/screens/login/login.dart';
import 'package:nft_app/ui/screens/signup/signup.dart';
import 'package:nft_app/ui/screens/verification/email_verification.dart';
import 'package:nft_app/ui/screens/verification/phone_verification.dart';
import 'package:nft_app/ui/screens/verification/verify.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../ui/screens/home/tab_home.dart';
import '../../ui/screens/verification/pin_code.dart';

@StackedApp(routes: [
  MaterialRoute(page: Intro,initial: true),
  MaterialRoute(page: Signup),
  MaterialRoute(page: Login,),
  MaterialRoute(page: Verify,),
  MaterialRoute(page: PinCode,),
  MaterialRoute(page: PhoneVerification,),
  MaterialRoute(page: EmailVerification,),
  MaterialRoute(page: ResetPassword,),
  MaterialRoute(page: TabHome,),
],dependencies: [
  Singleton(classType: DialogService),
  Singleton(classType: SnackbarService),
  Singleton(classType: NavigationService),
])
class App {

}