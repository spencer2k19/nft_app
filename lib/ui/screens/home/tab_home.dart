import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/ui/screens/home/nft_screen.dart';
import 'package:nft_app/ui/screens/home/profile/profile_screen.dart';
import 'package:nft_app/ui/screens/home/search_screen.dart';
import 'package:nft_app/ui/screens/home/stats_screen.dart';
import 'package:nft_app/ui/screens/home/wallet/wallet_screen.dart';
import 'package:nft_app/ui/shared/colors.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  List<dynamic>? _pages;
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      {
        'page':const WalletScreen(),
      },
      {
        'page':const SearchScreen(),
      },
      {
        'page': const NFTScreen(),
      },
      {
        'page': const StatScreen(),
      },
      {
        'page':const ProfileScreen()
      }
    ];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedPageIndex,
          backgroundColor: Colors.white,
          selectedItemColor: blueColor,
          showUnselectedLabels: true,
          unselectedItemColor: secondaryColor,
          onTap: (index){
            _selectPage(index);
          },

          items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined,color: blueColor,),
          label: "Wallet",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search,),
          label: "DEX",
        ),

        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/nft.png")),
          label: "NFs",
        ),

        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chart_bar_square),
          label: "Stats",
        ),

        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_circle),
          label: "Profile",
        )
      ]),
    );
  }
}
