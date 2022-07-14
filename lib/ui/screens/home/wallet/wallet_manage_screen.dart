import 'package:flutter/material.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:nft_app/ui/widgets/custom_back_button.dart';
import 'package:nft_app/ui/widgets/provider_item.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../core/app/app.router.dart';

class WalletManageScreen extends StatelessWidget {
  const WalletManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providers = [
      {
        "asset": "metamask.svg",
        "name": "Metamask",
        "price": "\$611,349,523",
        "address": "0x33ecda5e...8b7c",
        "svg": true
      },
      {
        "asset": "coinbase.png",
        "name": "Coinbase",
        "price": "\$101,600,178",
        "address": "0x33ecda5e...8b7c",
        "svg": false
      },
      {
        "asset": "rainbow.svg",
        "name": "Rainbow",
        "price": "\$61,379,836",
        "address": "0x33ecda5e...8b7c",
        "svg": true
      },
      {
        "asset": "ethereum.svg",
        "name": "Ethereum",
        "price": "\$49,574,948",
        "address": "0x33ecda5e...8b7c",
        "svg": true
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    CustomBackButton(onPressed: () {
                      Navigator.pop(context);
                    }),
                    const SizedBox(
                      width: 60,
                    ),
                    Align(
                        child: Center(
                            child: Text(
                      "Wallet Manage",
                      style: titleStyleHeading.copyWith(fontSize: 18),
                    )))
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              Map<String, dynamic> provider = providers[index];
              return ProviderItem(
                asset: provider["asset"],
                name: provider["name"],
                price: provider["price"],
                address: provider["address"],
                isSvg: provider["svg"],
              );
            }, childCount: providers.length)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              sliver: SliverToBoxAdapter(
                child: FlatButton(onPressed: () {
                  locator<NavigationService>().navigateTo(Routes.addWallet);
                },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Icon(Icons.add_circle_outline,color: blueColor,),
                        const SizedBox(width: 10,),
                        Text("Add new wallet",style: titleStylePrimary.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                        ),)

                      ],
                    )),
              ),
            ),

            const SliverPadding(padding: EdgeInsets.only(bottom: 30))
          ],
        ),
      ),
    );
  }
}
