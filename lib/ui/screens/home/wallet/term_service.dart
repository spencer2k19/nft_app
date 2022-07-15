import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../core/app/app.locator.dart';
import '../../../shared/title_style.dart';
import '../../../widgets/custom_back_button.dart';

class TermService extends StatelessWidget {
  const TermService({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  onPressed: () {
                    locator<NavigationService>().back();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Term of Service",
                  style: titleStyleHeading,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text("Last Updated: June 14, 2022",style: titleStylePrimary.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,

                ),),
                const SizedBox(height: 20,),
                Text("1. Introduction",style: titleStyleHeading.copyWith(fontSize: 14),),
                const SizedBox(height: 15,),
                Text("OKNFT is committed to protecting your privacy. We have prepared this Privacy Policy to describe to you our practices regarding the Personal Data (as defined below) we collect from users of our website, located at https://opensea.io (the “Site”) and online services (collectively, the “Service”).",
                style: titleStyleNormal.copyWith(
                  color: const Color(0xFF475569),
                  fontSize: 14
                ),textAlign: TextAlign.justify,),
                const SizedBox(height: 20,),
                Text("2. Account Registration and Communication Preferences",style: titleStyleHeading.copyWith(fontSize: 14),),
                const SizedBox(height: 15,),
                Text("If you wish to participate in an Auction for Crypto Assets, you will need to register for an account on the Service (“Account”). By creating an Account, you agree to (a) provide accurate, current and complete Account information about yourself, (b) maintain and promptly update from time to time as necessary your Account information, (c) maintain the security of your password and accept all risks of unauthorized access to your Account and the information you provide to us.",
                  style: titleStyleNormal.copyWith(
                      color: const Color(0xFF475569),
                      fontSize: 14
                  ),textAlign: TextAlign.justify,),

                const SizedBox(height: 20,),
                Text("3. Ownership",style: titleStyleHeading.copyWith(fontSize: 14),),
                const SizedBox(height: 15,),
                Text("Unless otherwise indicated in writing by us, the Service and all content and other materials contained therein, including, without limitation, the OpenSea logo and all designs, text, graphics, pictures, information, data, software, sound files, other files and the selection and arrangement thereof (collectively, “Content”) are the proprietary property of OpenSea or our affiliates, licensors or users, as applicable.",
                  style: titleStyleNormal.copyWith(
                      color: const Color(0xFF475569),
                      fontSize: 14
                  ),textAlign: TextAlign.justify,),
                const SizedBox(height: 40,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
