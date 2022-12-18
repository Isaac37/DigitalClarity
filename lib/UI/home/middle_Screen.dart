import 'package:digital_clarity/UI/whatWeDo/what_we_do.dart';
import 'package:digital_clarity/widgets/medium_screen_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/drawer.dart';
import '../../widgets/functions.dart';

class MiddleScreen extends StatefulWidget {
  const MiddleScreen({Key? key}) : super(key: key);

  @override
  _MiddleScreenState createState() => _MiddleScreenState();
}

class _MiddleScreenState extends State<MiddleScreen> {
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
              padding: const EdgeInsets.only(right: 40.0, top: 8),
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
                  size: 30,
                ),
              ),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(right: 40.0, top: 20),
            child: Row(
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
                    fontSize: 17.sp,
                    // fontFamily: 'RubikMoonrocks',
                    // fontWeight: FontWeight.w900,
                    letterSpacing: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: EndDrawer(),
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
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '"Engineered',
                      style: TextStyle(
                          fontSize: 40,
                          // color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      'To Move',
                      style: TextStyle(
                          fontSize: 40,
                          // color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      'The Human Spirit"',
                      style: TextStyle(
                          fontSize: 40,
                          // color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      'Let Us Help You Run Your Business Using Technology',
                      style: TextStyle(
                          fontSize: 20,
                          // color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: 300,
                // ),
                SizedBox(
                  height: screenSize.height * 0.50,
                  width: screenSize.width * 0.40,
                  child:
                  Image.asset(
                    'images/home.png',
                    fit: BoxFit.contain,
                  ),


                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              children: [
                SizedBox(
                  width: screenSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: SizedBox(
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
                                    fontSize: 17.sp,
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 500,
                                  child: Text(
                                    'We help your business by advertising your products'
                                    ' and services, to retain and gain more customers.',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                ),
                                const Spacer(),
                                button(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
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
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Give your business an identity on the internet.'
                                  ' We design and develop websites which suits your business.',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                  ),
                                ),
                                const Spacer(),
                                button(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 10,
                ),
                SizedBox(
                  width: screenSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: SizedBox(
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
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'We develop customised Web & Mobile applications(iOS, android and desktop),'
                                  ' e-commerce, tailored to increase revenue for your business.',
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                                const Spacer(),
                                button(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
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
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'We offer different IT services for your business which includes'
                                  ' but not limited to: WAN & LAN  installation, Help Desk, Software installation etc.',
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                                const Spacer(),
                                button(),
                              ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Our DNA',
                        style: TextStyle(fontSize: 18.sp, letterSpacing: 15),
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
            width: screenSize.width * 0.77,
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
                          style: TextStyle(fontSize: 17.sp),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenSize.width * 0.47,
                  child: Card(
                    // elevation: 7,
                    color: Colors.teal[300],
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
                                style: TextStyle(
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.47,
                  child: Card(
                    color: Colors.cyan[200],
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
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Web & App Development',
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ],
                            ),
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
            clipBehavior: Clip.antiAlias,
            // color: Colors.yellow,
            child: SizedBox(
              width: 1400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(
                              flex: 4,
                            ),
                            Text(
                              'Our goal is to deliver digital performance',
                              style: TextStyle(
                                fontSize: 17.sp,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            // SizedBox(
                            //   height: 70,
                            // ),
                            Text(
                              'We help our clients to understand their goals and objectives, using digital marketing to drive new business opportunities and retain their current customers.',
                              style: TextStyle(
                                fontSize: 13.sp,
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              'If you are interested in learning more about whether we can help your organisation, get started with a free assessment.',
                              style: TextStyle(
                                fontSize: 13.sp,
                              ),
                            ),
                            Spacer(
                              flex: 3,
                            ),

                            SizedBox(
                              // width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

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
                                                MaterialStateProperty
                                                    .resolveWith<Color>(
                                                        (Set<MaterialState>
                                                            states) {
                                              if (states.contains(
                                                  MaterialState.hovered))
                                                return Colors.pinkAccent;
                                              else {
                                                return Colors.blue;
                                              }
                                            }),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                side: BorderSide(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            sendingMails();
                                          },
                                          child: Text(
                                            'Email Us',
                                            style: TextStyle(
                                              fontSize: 13.sp,
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
                                                MaterialStateProperty
                                                    .resolveWith<Color>(
                                                        (Set<MaterialState>
                                                            states) {
                                              if (states.contains(
                                                  MaterialState.hovered))
                                                return Colors.pinkAccent;
                                              else {
                                                return Colors.blue;
                                              }
                                            }),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                side: BorderSide(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            launchCaller();
                                          },
                                          child: Text(
                                            'Call Us',
                                            style: TextStyle(
                                              fontSize: 13.sp,
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
                            Spacer(
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      child:
                      Image.asset(
                        'images/n.png',
                        fit: BoxFit.contain,
                      ),

                      // Image.asset(
                      //   'images/contact.png',
                      //   // 'images/team.jpg',
                      //   fit: BoxFit.contain,
                      //   height: 400,
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MediumFooter(),
        ],
      ),
    );
  }
}
