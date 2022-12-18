import 'package:digital_clarity/UI/whatWeDo/what_we_do_big_screen.dart';
import 'package:digital_clarity/UI/whatWeDo/what_we_do_middle_screen.dart';
import 'package:digital_clarity/UI/whatWeDo/what_we_do_small_screen.dart';
import 'package:flutter/material.dart';

class WhatWeDo extends StatefulWidget {
  const WhatWeDo({Key? key}) : super(key: key);

  @override
  _WhatWeDoState createState() => _WhatWeDoState();
}

class _WhatWeDoState extends State<WhatWeDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
        if (constrains.maxWidth > 1200) {
          return WhatWeDoBigScreen();
        } else if (constrains.maxWidth <= 1200 && constrains.maxWidth >= 800) {
          return WhatWeDoMiddleScreen();
        }
        return WhatWeDoSmallScreen();
      }),
    );
  }
}
