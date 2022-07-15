import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../core/app/app.locator.dart';
import '../../../../core/app/app.router.dart';
import '../../../shared/title_style.dart';
import '../../../widgets/custom_back_button.dart';

class AddWallet extends StatelessWidget {
  const AddWallet({Key? key}) : super(key: key);

  Widget buildWalletOption(
      IconData iconData, String title, String description, Function handler) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE6E6E6), width: 1),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                spreadRadius: 0,
                color: Color.fromRGBO(167, 174, 193, 0.1))
          ]),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(
          iconData,
          color: Colors.black.withOpacity(0.8),
        ),
        title: Text(
          title,
          style: titleStyleNormal.copyWith(fontSize: 14, color: Colors.black),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            description,
            style: titleStyleNormal.copyWith(fontSize: 10),
          ),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black.withOpacity(0.45),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                "Add new wallet",
                style: titleStyleHeading,
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  locator<NavigationService>().navigateTo(Routes.termService);
                },
                child: RichText(
                    text: TextSpan(
                        style: titleStyleNormal.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        children: [
                      const TextSpan(
                          text: "By connecting your wallet, you agree to our "),
                      TextSpan(
                          text: "Term of Service ",
                          style: titleStylePrimary.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14)),
                      const TextSpan(text: "and our "),
                      TextSpan(
                          text: "Privacy policy ",
                          style: titleStylePrimary.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14)),
                    ])),
              ),
              const SizedBox(
                height: 30,
              ),
              buildWalletOption(CupertinoIcons.link, "Connect wallet",
                  "Connect to third-party wallet App", () {}),
              const SizedBox(
                height: 5,
              ),
              buildWalletOption(
                  CupertinoIcons.arrow_down_to_line,
                  "Import wallet",
                  "Import your wallet via seed phrase or private key",
                  () {}),
              const SizedBox(
                height: 5,
              ),
              buildWalletOption(CupertinoIcons.at, "Track address",
                  "Observe or track the assets of any other wallet", () {}),
            ],
          ),
        ),
      ),
    );
  }
}
