import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:nft_app/ui/widgets/filled_button.dart';

import '../shared/colors.dart';

class PopularNFTItem extends StatelessWidget {
  final String asset;
  final String title;
  final String time;
  final String price;

  const PopularNFTItem(
      {Key? key,
      required this.asset,
      required this.title,
      required this.time,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0,10),
              blurRadius: 10,
              spreadRadius: 0,
              color: const Color(0xFFF2F2F2).withOpacity(0.6)
            )
          ]
      ),
      child: Card(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(
            color: Color(0xFFF2F2F2),
            width: 1
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/$asset",
                        width: 215,
                        fit: BoxFit.cover,
                        height: 220,
                      )),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10, right: 5),
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.white.withOpacity(0.35),
                              Colors.white.withOpacity(0.08),
                            ]),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.08),
                                width: 1),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(28, 29, 32, 0.08))
                            ]),
                        child: Center(
                          child: Text(
                            time,
                            style: titleStyleNormal.copyWith(
                                color: Colors.black.withOpacity(0.65),
                                fontSize: 12),
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: titleStyleHeading.copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 215,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current bid",
                          style: titleStyleNormal.copyWith(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/ethereum.svg"),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              price,
                              style: titleStyleHeading.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),


                    MaterialButton(
                        minWidth: 80,
                        height: 28,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: blueColor,
                        child: Text(
                          "Place bid",
                          style: titleStyleNormal.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
