import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:nft_app/ui/widgets/custom_back_button.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../shared/title_style.dart';

class PinCode extends StatelessWidget {
  PinCode({Key? key}) : super(key: key);

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
              Text("Create your pin code", style: titleStyleHeading,),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "Create a 4-digit PIN code that will be used every time you login",
                  style: titleStyleNormal.copyWith(

                  ),),
              ),
              const SizedBox(height: 15,),
              Container(
                width: double.infinity,
                child: Pinput(
                  length: 5,
                  submittedPinTheme: PinTheme(
                      height: 56,
                      textStyle: titleStyleNormal.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          color: blueColor,

                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                              color: blueColor,
                              width: 1
                          )
                      )
                  ),
                  defaultPinTheme: PinTheme(
                   height: 56,
                   margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                              color: blueColor,
                              width: 1
                          )
                      )
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("I don't receive code!",style: titleStyleNormal,),
                  const SizedBox(width: 5,),
                  InkWell(onTap: (){},
                  child: Text("Resend please",style: titleStylePrimary.copyWith(
                    fontWeight: FontWeight.w500
                  ),),
                  )
              ],)

            ],
          ),
        ),
      ),
    );
  }
}
