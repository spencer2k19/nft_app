
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:nft_app/ui/widgets/filled_button.dart';
import 'package:nft_app/ui/widgets/hint_input_widget.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as inset_box;
import 'package:stacked_services/stacked_services.dart';

import '../../../core/app/app.router.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign In",style: titleStyleHeading,),

                const SizedBox(height: 30,),
                Text("Email",style: titleStyleNormal,),
                const SizedBox(height: 10,),
                HintInputWidget(label: "Your user email address",
                    textInputAction: TextInputAction.next,
                    icon:  Icon(Icons.mail_outline,color: Colors.black.withOpacity(0.9),),
                    keyboardType: TextInputType.name),

                const SizedBox(height: 30,),
                Text("Password",style: titleStyleNormal,),
                const SizedBox(height: 10,),
                HintInputWidget(label: "Your password",
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    icon:  Icon(Icons.lock_outline_rounded,color: Colors.black.withOpacity(0.9),),
                    keyboardType: TextInputType.visiblePassword),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  FlatButton(onPressed: (){
                    locator<NavigationService>().navigateTo(Routes.phoneVerification,arguments: PhoneVerificationArguments(reset: true));
                  }, child: Text("Forgot Password ?",style: titleStylePrimary.copyWith(
                    fontWeight: FontWeight.w500
                  ),))
                ],),
                const SizedBox(height: 50,),
                FilledButton(title: "Sign In", handler: (){
                  locator<NavigationService>().navigateTo(Routes.tabHome);
                }),

                const SizedBox(height: 15,),
                Center(child: Text("Or sign in with",style: titleStyleNormal,)),
                const SizedBox(height: 15,),
                MaterialButton(
                  minWidth: double.infinity,
                    height: 56,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.link,color: Colors.black.withOpacity(0.9),),
                        const SizedBox(width: 20,),
                        Text("Connect Wallet",style: titleStyleNormal.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        ),)

                      ],),
                    onPressed: (){

                    }),

                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: titleStyleNormal,),
                    const SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        locator<NavigationService>().navigateTo(Routes.signup);
                      },
                      child: Text("Sign up",style: titleStylePrimary.copyWith(
                          fontWeight: FontWeight.w600
                      ),),
                    ),
                  ],)



              ],
            ),
          ),
        ),
      ),
    );
  }
}
