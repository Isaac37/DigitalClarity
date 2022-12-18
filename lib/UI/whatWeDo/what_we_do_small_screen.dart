import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/blue_line.dart';
import '../../widgets/small_screen_drawer.dart';
import '../../widgets/small_screen_footer.dart';

class WhatWeDoSmallScreen extends StatefulWidget {
  const WhatWeDoSmallScreen({Key? key}) : super(key: key);

  @override
  _WhatWeDoSmallScreenState createState() => _WhatWeDoSmallScreenState();
}


class _WhatWeDoSmallScreenState extends State<WhatWeDoSmallScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      // extendBodyBehindAppBar: true,
      // backgroundColor: Colors.blue[70],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
            iconTheme: IconThemeData(color: Color(0xFF077bd7)),
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: IconButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    _scaffoldKey.currentState!.openEndDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    // size: screenSize.width * 0.040,
                    size: 24,
                  ),
                ),
              ),
            ],
            title: Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    // height: screenSize.height * 0.5,
                    // width: screenSize.width * 0.5,
                    child: Image.asset(
                      'images/logo.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Digital Clarity',
                    style: TextStyle(
                      color: Color(0xFF077bd7),
                      fontSize: 20.sp,
                      // fontFamily: 'RubikMoonrocks',
                      // fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            )),
      ),

      endDrawer: SmallScreenDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 3000),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: getListFiles(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> getListFiles() {
  List<Widget> list = [const Children()];

  return list;
}

class Children extends StatelessWidget {
  const Children({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              // color: Colors.black,
              height: 300,
              width: screenSize.width,
              child: Image.asset(
                'images/blu.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              // bottom: 10,
              top: 100,
              child: Column(
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('WHAT WE DO',
                          textStyle: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold)),
                    ],
                    isRepeatingAnimation: false,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'We help you make better decisions about your',
                    style: TextStyle(
                        fontSize: 17.sp,
                        // fontSize: screenSize.width * 0.035,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' marketing.',
                    style: TextStyle(
                        fontSize: 17.sp,
                        // fontSize: screenSize.width * 0.035,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Material(
              elevation: 10,
              // borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.cyan,

                    ),
                height: 50,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      const Text(
                        ' / What We Do',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Text(
                    'Services Offered',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 4,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  // color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'images/b.png',
                                fit: BoxFit.contain,
                                height: 70,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Network Services',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'Networking IT services encompasses everything for the successful'
                                ' implementation of a company network. We offer On-site installation of network infrastructure, '
                                'setting up LAN and WAN routers and modems. ',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.34,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset(
                                'images/help.png',
                                fit: BoxFit.contain,
                                height: 70,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Help Desk',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'Let us help you  resolve issues they you may experience'
                                ' with a product, service, or system.',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  // color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          'images/web.png',
                          fit: BoxFit.contain,
                          height: 70,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Web Development',
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          'We create and maintain websites using latest technologies.  A website will help your business have '
                          ' online visibility and discoverability as well as establish'
                          ' or enhance brand recognition It will increase the company\'s, awareness, sales, and information. .',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/phone.png',
                              fit: BoxFit.contain,
                              height: 70,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        'Web and Mobile\n Applications',
                                        style: TextStyle(fontSize: 18.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'Web and Mobile Applications are systems allowing better communication'
                                ' between business and their customers.'
                                'They allow users to have easy access to the company\'s products or Services.',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  // color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/access.png',
                              fit: BoxFit.contain,
                              height: 70,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Computer accessories',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'We sell computer accessories to help companies run their day to day business.'
                                'Accessories include but not limited to printers, keyboards, laptop chargers, Mice, Webcams etc...  ',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Image.asset(
                        'images/install.png',
                        fit: BoxFit.contain,
                        height: 70,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Software Installation',
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          'We provide and install softwares which include OS , Anti-virus, MS office and other softwares, '
                          'but if you have purchased your own software packages we can also assist in installation',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  // color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/consult.png',
                              fit: BoxFit.contain,
                              height: 70,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      'Information Technology\n Consulting',
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'Let us help you navigate and selecting the right tools to increase your business productivity',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.47,
                height: 350,
                child: Card(
                  elevation: 7,
                  color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/recover.png',
                              fit: BoxFit.contain,
                              height: 70,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Advertising',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'We help  Companies advertise their products'
                                ' or services to reach out to potential clients or customers ',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.77,
                height: 350,
                child: Card(
                  elevation: 7,
                  // color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlueLine(),
                      Image.asset(
                        'images/training.png',
                        fit: BoxFit.contain,
                        height: 70,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Computer Training',
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          'We offer computer basic training about how computers works and how to use them. '
                          'We also offer training on how to use operating systems and'
                          ' application software which include Microsoft Office packages eg Excel, PowerPoint, Word etc',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                // height: screenSize.height * 0.30,
                // width: screenSize.width * 0.40,
                child: Card(
                  elevation: 4,
                  // color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'TO GET A QUOTE',
                          style: TextStyle(
                              fontSize: 19.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 34,
                              width: 100,
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Colors.pinkAccent;
                                    else {
                                      return Colors.blue;
                                    }
                                  }),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(color: Colors.blue),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  _sendingMails();
                                },
                                child: Text(
                                  'Email Us',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    // color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              height: 34,
                              width: 100,
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Colors.pinkAccent;
                                    else {
                                      return Colors.blue;
                                    }
                                  }),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(color: Colors.blue),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  _launchCaller();
                                },
                                child: Text(
                                  'Call Us',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    // color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SmallScreenFooter(),
      ],
    );
  }

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
}
