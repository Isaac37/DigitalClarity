import 'package:digital_clarity/widgets/rendertext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({Key? key}) : super(key: key);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      color: Colors.white.withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      fontSize: textSize(context, 0.030),

                      // fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Spacer(),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          color: _isHovering[0]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 45,
                            color: const Color(0xFF051441),
                          ))
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 17),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Marketing Consultancy',
                        style: TextStyle(
                            color: _isHovering[1]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 85,
                            color: const Color(0xFF051441),
                          ))
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 17),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Digital Marketing',
                        style: TextStyle(
                            color: _isHovering[2]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 75,
                            color: const Color(0xFF051441),
                          ))
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 17),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'AboutUs',
                        style: TextStyle(
                            color: _isHovering[3]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 45,
                            color: const Color(0xFF051441),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
