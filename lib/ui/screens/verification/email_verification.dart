import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:nft_app/ui/widgets/custom_back_button.dart';
import 'package:nft_app/ui/widgets/filled_button.dart';
import 'package:nft_app/ui/widgets/hint_input_widget.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/app/app.router.dart';
import '../../shared/title_style.dart';

class EmailVerification extends StatelessWidget {
  EmailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(onPressed: () {
                locator<NavigationService>().back();
              },),

              const SizedBox(height: 15,),
              Text("Enter your email address", style: titleStyleHeading,),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "We're going to send you a verification code to confirm your identity",
                  style: titleStyleNormal.copyWith(

                  ),),
              ),
              const SizedBox(height: 20,),
              Text("Verification code",style: titleStyleNormal.copyWith(
                  fontSize: 12
              ),),
              const SizedBox(height: 10,),
              HintInputWidget(label: "johndoe@gmail.com",
                  icon: const Icon(Icons.email,color: Colors.black,),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress),

              const SizedBox(height: 70,),
              FilledButton(title: "Send code",
                  handler: (){
                    locator<NavigationService>().navigateTo(Routes.pinCode);
                  })

            ],
          ),
        ),
      ),
    );
  }
}
