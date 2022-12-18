import 'package:digital_clarity/UI/home/big_screen.dart';
import 'package:digital_clarity/UI/home/small_Screen.dart';
import 'package:flutter/material.dart';

import 'middle_Screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
        if (constrains.maxWidth > 1200) {
          return BigScreen();
        } else if (constrains.maxWidth <= 1200 && constrains.maxWidth >= 800) {
          return MiddleScreen();
        }
        return SmallScreen();
      }),
    );
  }
}
