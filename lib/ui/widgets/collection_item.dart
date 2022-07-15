import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/ui/shared/title_style.dart';

class CollectionItem extends StatelessWidget {
  final String asset;
  final String author;
  final String name;
  final String content;
  final String variation;
  final int badge;

  const CollectionItem(
      {Key? key,
        required this.asset,
        required this.author,
        required this.content,
        required this.variation,
        required this.name,
        required this.badge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      margin: const EdgeInsets.only(top: 10,left: 5,right: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Row(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/$asset",),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(bottom: 5,left: 20),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Text("$badge",style: titleStyleNormal.copyWith(
                        color: Colors.white
                      ),),),
                    ))
              ],
            ),
            const SizedBox(width: 10,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text(name,style: titleStyleHeading.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 15
              )),

              const SizedBox(height: 10,),
              Text(author,style: titleStyleNormal.copyWith(
                  fontSize: 12
              ),)
            ],)
          ],
        ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/images/ethereum.svg"),
                  Text(content,style: titleStyleNormal.copyWith(fontSize: 12),),
                ],
              ),
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
