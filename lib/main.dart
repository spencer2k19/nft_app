import 'package:flutter/material.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/core/app/app.router.dart';
import 'package:nft_app/ui/shared/colors.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      title: 'NFT app',
      theme: ThemeData(
        primaryColor: blueColor,
      ),
      onGenerateRoute: StackedRouter().onGenerateRoute,

    );
  }
}



