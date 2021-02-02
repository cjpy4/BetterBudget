import 'package:flutter/material.dart';
import 'package:better_budget/pages/home.dart';
import 'constants.dart';

class BetterBudget extends StatelessWidget {
  static const String homeRoute = '/pages/home';
  static const String loginRoute = '/pages/login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Better Budget',
      theme: ThemeData(
        primaryColor: kPrimaryThemeColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      initialRoute: Home.navigationID,
      routes: {Home.navigationID: (context) => Home()},
    );
  }
}
