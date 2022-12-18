import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../UI/aboutUs/about.dart';
import '../UI/home/home_page.dart';
import '../UI/whatWeDo/what_we_do.dart';

class SmallScreenDrawer extends StatefulWidget {
  const SmallScreenDrawer({Key? key}) : super(key: key);

  @override
  _SmallScreenDrawerState createState() => _SmallScreenDrawerState();
}

final List _isHovering = [
  false,
  false,
  false,
  false,
  false,
];
_launchCaller() async {
  var url = Uri.parse("tel:+263 0772 472 250");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_sendingMails() async {
  var url = Uri.parse("mailto:isaaczackumbula@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _SmallScreenDrawerState extends State<SmallScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return AnimationLimiter(
      child: Column(
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 1000),
          childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 50.0,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: getListFiles(),
        ),
      ),
    );
  }
}

List<Widget> getListFiles() {
  List<Widget> list = [const Children()];

  return list;
}

class Children extends StatefulWidget {
  const Children({Key? key}) : super(key: key);

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Drawer(
        // backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 90,
                            child: Image.asset(
                              'images/logo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Digital Clarity',
                            style: TextStyle(
                              color: Color(0xFF077bd7),
                              fontSize: 29,
                              // fontFamily: 'RubikMoonrocks',
                              // fontWeight: FontWeight.w900,
                              letterSpacing: 3,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                              'images/cancel.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 9,
                ),

                Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[0] = true
                                    : _isHovering[0] = false;
                              });
                            },
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const MyHomePage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(
                                      color: _isHovering[0]
                                          ? Colors.pink
                                          : Colors.blue,
                                      fontSize: 29),
                                ),
                                Visibility(
                                    maintainSize: true,
                                    maintainState: true,
                                    maintainAnimation: true,
                                    visible: _isHovering[0],
                                    child: Container(
                                      height: 4,
                                      width: 80,
                                      color: Colors.blue,
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height / 20,
                          ),
                          TextButton(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[1] = true
                                    : _isHovering[1] = false;
                              });
                            },
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const AboutUs(),
                                ),
                              );
                            },
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    'AboutUs',
                                    style: TextStyle(
                                        color: _isHovering[1]
                                            ? Colors.pink
                                            : Colors.blue,
                                        fontSize: 29),
                                  ),
                                  Visibility(
                                      maintainSize: true,
                                      maintainState: true,
                                      maintainAnimation: true,
                                      visible: _isHovering[1],
                                      child: Container(
                                        height: 4,
                                        width: 110,
                                        color: Colors.blue,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height / 20,
                          ),
                          TextButton(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[2] = true
                                    : _isHovering[2] = false;
                              });
                            },
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const WhatWeDo(),
                                ),
                              );
                            },
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    'WhatWeDo',
                                    style: TextStyle(
                                        color: _isHovering[2]
                                            ? Colors.pink
                                            : Colors.blue,
                                        fontSize: 29),
                                  ),
                                  Visibility(
                                      maintainSize: true,
                                      maintainState: true,
                                      maintainAnimation: true,
                                      visible: _isHovering[2],
                                      child: Container(
                                        height: 4,
                                        width: 140,
                                        color: Colors.blue,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height / 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onHover: (value) {
                                setState(() {
                                  value
                                      ? _isHovering[3] = true
                                      : _isHovering[3] = false;
                                });
                              },
                              onPressed: () {
                                _sendingMails();
                              },
                              child: Text(
                                'isaaczackumbula@gmail.com',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: _isHovering[3]
                                      ? Colors.pink
                                      : Colors.blue,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height / 20,
                            ),
                            Text(
                              'Call',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onHover: (value) {
                                setState(() {
                                  value
                                      ? _isHovering[4] = true
                                      : _isHovering[4] = false;
                                });
                              },
                              onPressed: () {
                                _launchCaller();
                              },
                              child: Text(
                                '+263 0772 472 250',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: _isHovering[4]
                                      ? Colors.pink
                                      : Colors.blue,
                                ),
                              ),
                            ),

                            // SizedBox(
                            //   width: screenSize.width,
                            //   child: Opacity(
                            //     opacity: 0.2,
                            //     child: SvgPicture.asset(
                            //       'images/wave.svg',
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
