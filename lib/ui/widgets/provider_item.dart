import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/ui/shared/title_style.dart';

class ProviderItem extends StatelessWidget {
  final String asset;
  final String name;
  final String price;
  final String address;
  bool isSvg;


   ProviderItem(
      {Key? key,
      required this.asset,
      required this.name,
      required this.price,
      required this.address,this.isSvg = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE6E6E6),
          width: 1
        ),
        borderRadius: BorderRadius.circular(3),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 60,
            spreadRadius: 0,
            color: Color.fromRGBO(167, 174, 193, 0.1)
          )
        ]
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              isSvg?SvgPicture.asset("assets/images/$asset"):Image.asset("assets/images/$asset"),
              const SizedBox(width: 5,),
              Text(name,style: titleStyleNormal.copyWith(
                color: Colors.black,
                fontSize: 14
              ),),
              const SizedBox(width: 5,),
              Container(

                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text("Connect",style: titleStyleNormal.copyWith(
                  fontSize: 10
                ),),

              )
            ],
          ),

          IconButton(onPressed: (){}, 
              icon: Icon(Icons.keyboard_arrow_right,color: Colors.black.withOpacity(0.45),))

        ],
        ),

        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Value",style: titleStyleNormal.copyWith(
                  fontSize: 10
                ),),
                const SizedBox(height: 10,),
                Text(price,style: titleStyleHeading.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14
                ),)
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Address",style: titleStyleNormal.copyWith(
                    fontSize: 10
                ),),
                const SizedBox(height: 10,),
                Text(address,style: titleStyleNormal.copyWith(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.8)
                ),)

            ],)
          ],
        )
      ],),
    );
  }
}
