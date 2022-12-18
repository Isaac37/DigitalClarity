import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/drawer.dart';
import '../../widgets/footer.dart';
import '../../widgets/functions.dart';
import '../whatWeDo/what_we_do.dart';

class BigScreen extends StatefulWidget {
  const BigScreen({Key? key}) : super(key: key);

  @override
  _BigScreenState createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      // extendBodyBehindAppBar: true,
      // backgroundColor: Colors.blue[70],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
            iconTheme: const IconThemeData(color: const Color(0xFF077bd7)),
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
                  icon: const Icon(
                    Icons.menu,
                    size: 40,
                  ),
                ),
              ),
            ],
            title: Padding(
              padding: const EdgeInsets.only(right: 40.0),
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
                  const Text(
                    'Digital Clarity',
                    style: const TextStyle(
                      color: Color(0xFF077bd7),
                      fontSize: 29,
                      // fontFamily: 'RubikMoonrocks',
                      // fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            )),
      ),

      endDrawer: const EndDrawer(),

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
          ClipPath(
            clipper: WaveClipperTwo(
              flip: true,
            ),
            child: Container(
              height: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            '"Engineered',
                            style: TextStyle(
                                fontSize: 50,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            'To Move',
                            style: TextStyle(
                                fontSize: 50,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            'The Human Spirit"',
                            style: TextStyle(
                                fontSize: 50,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            'Let Us Help You Run Your Business Using Technology',
                            style: TextStyle(
                                fontSize: 20,
                                // color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 240,
                    ),
                    Container(
                      height: 450,
                      child:
                      Image.asset(
                        'images/home.png',
                        fit: BoxFit.contain,
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 140,
          ),
          Column(
            children: [
              SizedBox(
                width: screenSize.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Card(
                        child: SizedBox(
                          height: 300,
                          // color: Color(0xff98c1d9),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.account_balance_outlined,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                                const Spacer(),
                                const Text(
                                  'Advertising',
                                  style: TextStyle(fontSize: 29),
                                ),
                                const Spacer(),
                                const Text(
                                  'We help your business by advertising your products'
                                  ' and services, to retain and gain more customers.',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Spacer(),
                                button(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: SizedBox(
                          // color: Color(0xffe0fbfc),
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.web,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                                const Spacer(),
                                const Text(
                                  'Web Development',
                                  style: TextStyle(fontSize: 29),
                                ),
                                const Spacer(),
                                const Text(
                                  'Give your business an identity on the internet.'
                                  ' We design and develop websites which suits your business.',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Spacer(),
                                button()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: SizedBox(
                          // color: Color(0xffeec4d),

                          //   #293241
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.computer,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                                const Spacer(),
                                const Text(
                                  'Web and Mobile App Development',
                                  style: TextStyle(fontSize: 29),
                                ),
                                const Spacer(),
                                const Text(
                                  'We develop customised Web & Mobile applications(iOS, android and desktop),'
                                  ' e-commerce, tailored to increase revenue for your business.',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Spacer(),
                                button()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: SizedBox(
                          // color: Color(0xff293241),
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.bubble_chart_outlined,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                                const Spacer(),
                                const Text(
                                  'IT Services',
                                  style: TextStyle(fontSize: 29),
                                ),
                                const Spacer(),
                                const Text(
                                  'We offer different IT services for your business which includes'
                                  ' but not limited to: WAN & LAN  installation, Help Desk, Software installation etc.',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Spacer(),
                                button()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height / 7,
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
                    children: const [
                      Text(
                        'Our DNA',
                        style: TextStyle(fontSize: 29, letterSpacing: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    // height: screenSize.height * 0.47,
                    width: screenSize.width * 0.22,
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
                              children: const [
                                // SizedBox(
                                //   width: 20,
                                // ),
                                Text(
                                  'Design',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    // height: screenSize.height * 0.50,
                    width: screenSize.width * 0.22,
                    child: Card(
                      elevation: 7,
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
                              children: const [
                                Text(
                                  'E-Commerce',
                                  style: TextStyle(fontSize: 20),
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
                    width: screenSize.width * 0.22,
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
                              children: const [
                                Flexible(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Web & App Development',
                                      style: TextStyle(fontSize: 20),
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Card(
            color: Colors.cyan[50],
            clipBehavior: Clip.antiAlias,
            // color: Colors.yellow,
            child: Container(
              width: 1400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                            const Text(
                              'Our goal is to deliver digital performance',
                              style: TextStyle(fontSize: 29),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            // SizedBox(
                            //   height: 70,
                            // ),
                            const Text(
                              'Through the use of digital marketing and IT, we assist our clients in identifying their goals and objectives in order to generate new business prospects and keep their present clients.',
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            const Text(
                              'If you are interested in learning more about whether we can help your organisation, get in touch with us.',
                              style: TextStyle(fontSize: 14),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Image.asset(
                                'images/arow.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 34,
                                  width: 100,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
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
                                          // fontSize: 17,
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
                                      foregroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
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
                                          // fontSize: 17,
                                          // color: Colors.blue,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(
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
          const Footer(),
        ],
      ),
    );
  }
}
