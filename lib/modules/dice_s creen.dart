import 'package:audio_app/component/component.dart';
import 'package:audio_app/shared/styles.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftDice = 5;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roll",style: styleOne,),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Shake dice = ${leftDice + rightDice}",
            style: styleOne,
          ),
          height(context),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: buildDice(context, leftDice),
                  onTap: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: buildDice(context, rightDice),
                  onTap: () {
                    setState(() {
                      rightDice = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
          height(context),
          ElevatedButton(
            onPressed: () {
              setState(() {
                rightDice = Random().nextInt(6) + 1;
                leftDice = Random().nextInt(6) + 1;
              });
            },
            child: Text(
              "roll dice",
              style: styleOne,
            ),
          )
        ],
      ),
    );
  }


}
