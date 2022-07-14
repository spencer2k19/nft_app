import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/ui/screens/home/wallet/coins.dart';
import 'package:nft_app/ui/screens/home/wallet/nfts.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:nft_app/ui/shared/title_style.dart';

import 'defi.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  Widget buildCustomOption(Widget icon, String option, Function onPressed) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
              color: const Color(0xFFF2F2F2),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFF2F2F2), width: 1)),
          child: Center(
            child: icon,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          option,
          style: titleStyleNormal.copyWith(
              fontSize: 12, color: const Color(0xFF595959)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(left: 20,right: 20, top: 40,bottom: 10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Assets Manage",
                          style: titleStyleHeading.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset("assets/images/settings.svg"))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){

                          },
                          child: Row(
                            children: [
                              RichText(
                                  text: TextSpan(style: titleStyleNormal, children: [
                                const TextSpan(text: "Connect wallet - "),
                                TextSpan(
                                    text: " Metamask",
                                    style:
                                        titleStyleNormal.copyWith(color: Colors.black))
                              ])),
                              // const SizedBox(width: 0,),
                              const Icon(Icons.arrow_drop_down_outlined,color: Colors.black,)
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: const Color(0xFFE5E7EB),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/ethereum.svg",
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "0x59485…82590",
                                style: titleStyleNormal.copyWith(fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "\$635,285,84",
                      style: titleStyleHeading,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: buildCustomOption(
                                SvgPicture.asset("assets/images/arrow_up.svg"),
                                "Send",
                                () {})),
                        Expanded(
                            child: buildCustomOption(
                                SvgPicture.asset("assets/images/arrow_down.svg"),
                                "Receive",
                                () {})),
                        Expanded(
                            child: buildCustomOption(
                                SvgPicture.asset("assets/images/scan.svg"),
                                "Scan",
                                () {})),
                        Expanded(
                            child: buildCustomOption(
                                SvgPicture.asset("assets/images/history.svg"),
                                "History",
                                () {})),
                      ],
                    )
                  ],
                ),
              ),
            ),
             const SliverPadding(padding: EdgeInsets.only(top: 20)),
             const SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              sliver: SliverAppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                toolbarHeight: 5,

                bottom: TabBar(
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,

                    unselectedLabelColor: Color(0xFF8C8C8C),
                    indicatorColor: blueColor,

                    tabs: [
                  Tab(
                    text: "Coins",
                  ),
                  Tab(
                    text: "NFTs",
                  ),
                  Tab(
                    text: "DeFi",
                  )

                ]),
              ),
            ),
              const SliverToBoxAdapter(child: Expanded(

              child: SizedBox(
                height: 300,
                child: TabBarView(children: [
                  Coins(),
                  NFTs(),
                  Defi()
                ]),
              ),
            ),),
            const SliverPadding(padding: EdgeInsets.only(bottom: 30))
          ],
        ),
      ),
    );
  }
}
