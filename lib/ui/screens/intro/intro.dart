import 'package:flutter/material.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/ui/screens/intro/intro_view_model.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:nft_app/ui/widgets/filled_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/app/app.router.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  Widget buildDotIndicator({bool active = false}) {
    return Container(
      width: 32,
      // width: active? 48:32,
      height: 4,
      decoration:  BoxDecoration(
        color: active == true?blueColor:const Color(0xFFDBEAFE)
      ),
    );
  }
  Widget buildCurrentPage(String image,String title,String description) {
    return Column(children: [

        Image.asset("assets/images/$image",fit: BoxFit.cover,width: 220,height: 237,),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Text(title,style: titleStyleHeading,textAlign: TextAlign.center,),
        ),
        const SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: Text(description,style: titleStyleNormal,textAlign: TextAlign.center,),
       )

    ],);
  }


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IntroViewModel>.reactive(
     viewModelBuilder: ()=> IntroViewModel(),
      builder: (context, model,child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                child: Column(
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         InkWell(
                           onTap: (){
                              model.showSignup();
                           },
                           child: Text("Skip",style: titleStyleNormal.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                             color: Colors.black.withOpacity(0.8)
                           ),),
                         ),
                         Row(children: [
                           buildDotIndicator(active: true),
                           const SizedBox(width: 5,),
                           buildDotIndicator(active: model.currentIndex >=1),
                           const SizedBox(width: 5,),
                           buildDotIndicator(active: model.currentIndex == 2),
                           const SizedBox(width: 5,),

                         ],)
                       ],
                      ),

                    const SizedBox(height: 90,),

                    SizedBox(
                      height: 430,
                      child: PageView.builder(
                        controller: model.pageController,
                        onPageChanged: (page){
                          model.getChangedPageAndMoveBar(page);
                        },
                          physics: const ClampingScrollPhysics(),
                          itemCount: model.titles.length,
                          itemBuilder: (context,index){
                            return buildCurrentPage(model.images[index],model.titles[index], model.descriptions[index]);
                      }),
                    ),
                    const SizedBox(height: 20,),
                    FilledButton(title: model.currentIndex<2?"Next":"Get Started", handler: (){
                        if(model.currentIndex < 2) {
                          model.jumpToPage();
                        } else {
                          model.showSignup();
                        }
                    })

                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
