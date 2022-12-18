import 'package:digital_clarity/UI/whatWeDo/what_we_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/functions.dart';
import '../../widgets/small_screen_drawer.dart';
import '../../widgets/small_screen_footer.dart';

class SmallScreen extends StatefulWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // backgroundColor: Colors.blue[70],
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
                  hoverColor: Colors.transparent,
                  splashColor: Colors.blue,
                  // focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
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
                    height: screenSize.width * 0.10,
                    width: screenSize.width * 0.15,
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

class Children extends StatefulWidget {
  const Children({Key? key}) : super(key: key);

  @override
  _ChildrenState createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    button() {
      return SizedBox(
        height: 34,
        width: 120,
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Colors.pinkAccent;
              else {
                return Colors.blue;
              }
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => const WhatWeDo(),
              ),
            );
          },
          child: Row(
            children: [
              Text(
                'Learn More',
                style: TextStyle(
                  fontSize: 14,
                  // color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward_sharp,
                size: 22,
              ),
            ],
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '"Engineered',
                            style: TextStyle(
                                fontSize: 22.sp,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text(
                            'To Move',
                            style: TextStyle(
                                fontSize: 22.sp,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text(
                            'The Human Spirit"',
                            style: TextStyle(
                                fontSize: 22.sp,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text(
                            'Let Us Help You Run Your Business Using Technology',
                            style: TextStyle(
                                fontSize: 17.sp,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                // height: 140,
                                // width: 140,
                                // height: screenSize.height * 0.50,
                                width: screenSize.width * 0.50,
                                child:
                                Image.asset(
                                  'images/home.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  width: screenSize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 240,
                        // color: Color(0xff98c1d9),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.account_balance_outlined,
                                size: 50,
                                color: Colors.blue,
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Text(
                                'Advertising',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 500,
                                child: Text(
                                  'We help your business by advertising your products'
                                  ' and services, to retain and gain more customers.',
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ),
                              const Spacer(),
                              button()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        // color: Color(0xffe0fbfc),
                        height: 240,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.web,
                                size: 50,
                                color: Colors.blue,
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Text(
                                'Web Development',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 500,
                                child: Center(
                                  child: Text(
                                    'Give your business an identity on the internet.'
                                    ' We design and develop websites which suits your business.',
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              button(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: screenSize.height / 10,
                // ),
                SizedBox(
                  width: screenSize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        // color: Color(0xffeec4d),

                        //   #293241
                        height: 240,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.computer,
                                size: 50,
                                color: Colors.blue,
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Text(
                                'Web and Mobile App Development',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 500,
                                child: Text(
                                  'We develop customised Web & Mobile applications(iOS, android and desktop),'
                                  ' e-commerce, tailored to increase revenue for your business.',
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ),
                              const Spacer(),
                              button()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        // color: Color(0xff293241),
                        height: 240,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.bubble_chart_outlined,
                                size: 50,
                                color: Colors.blue,
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Text(
                                'IT Services',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 500,
                                child: Text(
                                  'We offer different IT services for your business which includes'
                                  ' but not limited to: WAN & LAN  installation, Help Desk, Software installation etc.',
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ),
                              const Spacer(),
                              button()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height / 10,
          ),
          SizedBox(
            height: 90,
            width: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our DNA',
                        style: TextStyle(fontSize: 20.sp, letterSpacing: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 2,
                        width: 42.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            // height: screenSize.height * 0.47,
            // width: screenSize.width * 0.97,
            child: Card(
              color: Colors.lightBlue[100],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/goal1.png',
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Text(
                          'Design',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  // height: screenSize.height * 0.47,
                  child: Card(
                    color: Colors.cyan[50],
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/goal.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'E-Commerce',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // height: screenSize.height * 0.47,
                  child: Card(
                    color: Colors.cyan[100],
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/goal2.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Web & App Development',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Card(
            color: Colors.cyan[50],
            // clipBehavior: Clip.antiAlias,
            // color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Our goal is to deliver digital performance',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'We help our clients to understand their goals and objectives, using digital marketing to drive new business opportunities and retain their current customers.',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          'If you are interested in learning more about whether we can help your organisation, get started with a free assessment.',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        // Spacer(
                        //   flex: 3,
                        // ),
                        SizedBox(
                          child:
                          Image.asset(
                            'images/n.png',
                            fit: BoxFit.contain,
                          ),

                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Image.asset(
                          'images/arow.png',
                          fit: BoxFit.contain,
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Row(
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
                                  sendingMails();
                                },
                                child: Text(
                                  'Email Us',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    // fontSize: 17,
                                    // color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
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
                                  launchCaller();
                                },
                                child: Text(
                                  'Call Us',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    // fontSize: 17,
                                    // color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
      ),
    );
  }
}
