import 'package:flutter/material.dart';

import 'about_big_screen.dart';
import 'about_medium_screen.dart';
import 'about_small_screen.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
        if (constrains.maxWidth > 1200) {
          return AboutUsBigScreen();
        } else if (constrains.maxWidth <= 1200 && constrains.maxWidth >= 800) {
          return AboutMiddle();
        }
        return AboutSmall();
      }),
    );
  }
}
