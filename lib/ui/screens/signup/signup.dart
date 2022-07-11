
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

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                Text("Create an Account",style: titleStyleHeading,),
                const SizedBox(height: 30,),
                Text("Username",style: titleStyleNormal,),
                const SizedBox(height: 10,),
                HintInputWidget(label: "Your username",
                    textInputAction: TextInputAction.next,
                    icon: Icon(Icons.person_pin,color: Colors.black.withOpacity(0.9),),
                    keyboardType: TextInputType.name),
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
                HintInputWidget(label: "At least 10 characters",
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    icon:  Icon(Icons.lock_outline_rounded,color: Colors.black.withOpacity(0.9),),
                    keyboardType: TextInputType.visiblePassword),
                const SizedBox(height: 50,),
                FilledButton(title: "Sign Up", handler: (){
                  locator<NavigationService>().navigateTo(Routes.verify);
                }),

                const SizedBox(height: 15,),
                Center(child: Text("Or sign up with",style: titleStyleNormal,)),
                const SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 56,
                  decoration: inset_box.BoxDecoration(
                    boxShadow: const [
                      inset_box.BoxShadow(
                        offset: Offset(0, 6),
                        blurRadius: 75,
                        color: Color.fromRGBO(100, 87, 87, 0.15),
                        spreadRadius: 0
                      )
                    ],
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: const Color(0xFFDBDBDB),
                      width: 1
                    )
                  ),
                  child: MaterialButton(
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
                ),

                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: titleStyleNormal,),
                    const SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        locator<NavigationService>().navigateTo(Routes.login);
                      },
                      child: Text("Sign in",style: titleStylePrimary.copyWith(
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
