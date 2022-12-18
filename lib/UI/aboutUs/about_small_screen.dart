import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/small_screen_drawer.dart';
import '../../widgets/small_screen_footer.dart';

class AboutSmall extends StatefulWidget {
  const AboutSmall({Key? key}) : super(key: key);

  @override
  _AboutSmallState createState() => _AboutSmallState();
}

class _AboutSmallState extends State<AboutSmall> {
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
    return SingleChildScrollView(
      child: Column(children: [
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
                      WavyAnimatedText('ABOUT US',
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
                    'Turn your goals into actions, and actions into success.',
                    style: TextStyle(
                        // fontSize: screenSize.width * 0.025,
                        fontSize: 16.sp,
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
                          fontSize: 20.0,
                        ),
                      ),
                      const Text(
                        ' / About Us',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              child: RotatedBox(
                quarterTurns: 1,
                child:
                Image.asset(
                  'images/about.png',
                  fit: BoxFit.contain,
                ),

              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: screenSize.width / 1.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi We are Digital Clarity',
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 2,
                    width: 56.sp,
                  ),
                  SizedBox(
                    height: screenSize.height / 24,
                  ),
                  Text(
                    'Marketing & IT',
                    style: TextStyle(
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 2,
                    width: 42.sp,
                  ),
                  SizedBox(
                    height: screenSize.height / 24,
                  ),
                  Text(
                    'We are an IT company and an Advertising Agency.',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: screenSize.height / 24,
                  ),
                  Text(
                    'We help your business grow through marketing your products '
                    'and services to gain new customers. We make very creative and innovative ads.',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: screenSize.height / 24,
                  ),
                  Text(
                    'We also offer Information Technology services which can help your business '
                    'grow by utilising IT services. We help your business become a digital '
                    'organisation and come up with a large potfolio services that can attract new customers and increase '
                    'your revenue',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: screenSize.height / 7,
        ),
        SmallScreenFooter(),
      ]),
    );
  }
}
