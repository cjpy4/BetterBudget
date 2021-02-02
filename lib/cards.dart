import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  OverviewCard();
  double overallBalance;
  double budgetsBalance;
  double billsBalance;
  double savingsBalance;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
        left: 24.0,
        right: 24.0,
      ),
    );
  }
}
