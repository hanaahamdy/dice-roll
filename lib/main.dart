import 'package:audio_app/modules/dice_s%20creen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      appBarTheme: AppBarTheme(elevation: 0),
scaffoldBackgroundColor: Color.fromRGBO(250,250,240,1),
        primarySwatch: Colors.teal,
      ),
      home:DiceScreen()
    );
  }
}

