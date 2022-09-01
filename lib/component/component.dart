import 'package:flutter/material.dart';
buildDice(BuildContext context,int diceNumber) {
  return Container(
    child: Image.asset('images/dice$diceNumber.png',fit: BoxFit.contain),
    margin: EdgeInsets.all(10),
    height: MediaQuery.of(context).size.height * .3,
    width:double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),

    ),
  );
}
SizedBox height(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .04,
  );
}