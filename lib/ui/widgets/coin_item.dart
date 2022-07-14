import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/ui/shared/title_style.dart';

class CoinItem extends StatelessWidget {
  final String asset;
  final String price;
  final String coin;
  final String supply;
  final String content;
  final String variation;

  const CoinItem(
      {Key? key,
      required this.asset,
      required this.price,
      required this.supply,
      required this.content,
      required this.variation,required this.coin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      margin: const EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Row(
        children: [
          Image.asset("assets/images/$asset",),
          const SizedBox(width: 10,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            RichText(text: TextSpan(style: titleStyleHeading.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),children: [
              TextSpan(text: "$price "),
              TextSpan(text: coin,style: titleStyleNormal.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                 color: Colors.black.withOpacity(0.8)
              ))
            ])),

            const SizedBox(height: 10,),
            Text(price,style: titleStyleNormal.copyWith(
                fontSize: 12
            ),)
          ],)
        ],
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Text(content,style: titleStyleNormal.copyWith(fontSize: 12),),
        const SizedBox(height: 10,),
        Text(variation,style: titleStyleNormal.copyWith(
          color: variation.contains("-")?const Color(0xFFDC2626):const Color(0xFF16A34A),
          fontSize: 12
        ),)  
      ],)


      ],),
    );
  }
}
