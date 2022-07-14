import 'package:flutter/material.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:nft_app/ui/widgets/coin_item.dart';

class Coins extends StatelessWidget {
  const Coins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coins = [
      {
        "asset":"bitcoin.png",
        "price":"35,908",
        "coin":"BTC",
        "supply":"\$5,348,156,547",
        "content":"\$20,556,2",
        "variation":"+4.45%"
      },

      {
        "asset":"ether_image.png",
        "price":"33,790",
        "coin":"ETH",
        "supply":"\$3,578,425,412",
        "content":"\$11,21",
        "variation":"+1,81%"
      },

      {
        "asset":"litecoin.png",
        "price":"11,981",
        "coin":"LTC",
        "supply":"\$2,721,989,499",
        "content":"\$52.94",
        "variation":"-3.14%"
      },

      {
        "asset":"doge.png",
        "price":"655",
        "coin":"DOGE",
        "supply":"\$1,026,291,589",
        "content":"\$1,128,18",
        "variation":"-8.85%"
      },
    ];


    return CustomScrollView(
      slivers: [
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          Map<String,dynamic> coinItem = coins[index];
          return CoinItem(asset: coinItem["asset"],
              price: coinItem["price"],
              supply: coinItem["supply"],
              content: coinItem["content"],
              variation: coinItem["variation"],
              coin: coinItem["coin"]);
        },childCount: coins.length )),

        SliverToBoxAdapter(child: Column(
          children: [
            Text("Don't see your token?",style: titleStyleNormal.copyWith(
              fontSize: 12,
              color: Colors.black.withOpacity(0.9)
            ),),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){

              },
              child: Text("Import tokens",style: titleStylePrimary.copyWith(
                  fontSize: 12,
              ),),
            ),




          ],
        ),),
        const SliverPadding(padding: EdgeInsets.only(bottom: 80))

      ],
    );
  }
}
