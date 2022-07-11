import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as inset_box;
import 'package:nft_app/ui/widgets/filled_button.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/app/app.router.dart';
import '../../shared/colors.dart';
class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

  int _checkedPosition = 1;
  Widget buildTypeIdentity(String title,String subtitle,IconData iconData,Function handler,{bool isChecked = false}) {
      return InkWell(
        onTap: (){
          handler();
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: isChecked? const Color(0xFFDBEAFE):null,
              border: Border.all(
                color: const Color(0xFFD9D9D9),
                width: 1,

              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: isChecked? blueColor: const Color(0xFFF3F4F6)
                  ),
                  child:  Center(child: Icon(iconData,color: isChecked?Colors.white:Colors.black,),),
                ),
                const SizedBox(width: 15,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: titleStyleNormal.copyWith(
                        color: isChecked?blueColor:Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                    ),),
                    const SizedBox(height: 10,),
                    Text(subtitle,style: titleStyleNormal.copyWith(
                      color: isChecked?blueColor:Colors.black,
                      fontSize: 12,
                    ),),
                  ],),
              ],),

              Container(
               padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isChecked? blueColor:Colors.white,
                    border: isChecked?null: Border.all(
                        color: const Color(0xFFBFBFBF),
                        width: 1
                    )
                ),
                child: isChecked?
                const Icon(Icons.check,color: Colors.white,)

                :null,
              )



            ],),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/verification.png",fit: BoxFit.cover,),
              const SizedBox(height: 30,),
              Text("Verify your identity",style: titleStyleNormal.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,

              ),),
              const SizedBox(height: 10,),
              SizedBox(
                width: 300,
                child: Text("To help you protect from fraud and identity theft, and to comply with federal regulations",
                  textAlign: TextAlign.center,
                  style: titleStyleNormal.copyWith(

                ),),
              ),

              const SizedBox(height: 40,),
              buildTypeIdentity("Email", "Verify with email", Icons.email,(){
                setState(() {
                  _checkedPosition = 1;
                });
              },isChecked: _checkedPosition ==1),
              const SizedBox(height: 15,),
              buildTypeIdentity("Phone number", "Get started", Icons.call,(){
                setState(() {
                  _checkedPosition = 2;
                });
              },isChecked: _checkedPosition == 2),

              const SizedBox(height: 50,),
             FilledButton(title: "Continue", handler: (){
               if(_checkedPosition == 1) {
                 locator<NavigationService>().navigateTo(Routes.emailVerification);
               } else {
                 locator<NavigationService>().navigateTo(Routes.phoneVerification,arguments: PhoneVerificationArguments(reset: false));
               }

             }),
              const SizedBox(height: 30,)




          ],),
        ),
      )),
    );
  }
}
