import 'package:better_budget/constants.dart';
import 'package:flutter/material.dart';

class Envelope extends StatelessWidget {
  Envelope({this.name, this.amount});
  String name;
  double amount;
  double balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          name,
          style: kPrimaryTextStyle,
        ),
        subtitle: Text(
          amount.toString(),
          style: kPrimaryTextStyle,
        ),
      ),
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: kPrimaryCardColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );
  }
}
