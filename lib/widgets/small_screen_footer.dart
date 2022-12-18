import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'functions.dart';

class SmallScreenFooter extends StatefulWidget {
  const SmallScreenFooter({Key? key}) : super(key: key);

  @override
  _SmallScreenFooterState createState() => _SmallScreenFooterState();
}

class _SmallScreenFooterState extends State<SmallScreenFooter> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      // color: Colors.blue,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // 5
            Color(0xff0d47a1),
            Color(0xff0277bd),
          ],
          begin: FractionalOffset(0.2, 0.2),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      height: 317,
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Digital Clarity',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.pinkAccent;
                            else {
                              return Colors.white;
                            }
                          }),
                        ),
                        onPressed: () {
                          sendingMails();
                        },
                        child: Text(
                          'isaaczackumbula@gmail.com',
                          style: TextStyle(
                            fontSize: 17,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 17,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.pinkAccent;
                            else {
                              return Colors.white;
                            }
                          }),
                        ),
                        onPressed: () {
                          launchCaller();
                        },
                        child: Text(
                          '+263 0772 472 250',
                          style: TextStyle(
                            fontSize: 17,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 17,
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Harare, Zimbabwe',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white54,
                            size: 17,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered))
                                  return Colors.pinkAccent;
                                else {
                                  return Colors.white;
                                }
                              }),
                            ),
                            onPressed: () {
                              insta();
                            },
                            child: Text(
                              'instagram',
                              style: TextStyle(
                                fontSize: 17,
                                // color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white54,
                            size: 17,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered))
                                  return Colors.pinkAccent;
                                else {
                                  return Colors.white;
                                }
                              }),
                            ),
                            onPressed: () {
                              fb();
                            },
                            child: Text(
                              'facebook',
                              style: TextStyle(
                                fontSize: 17,
                                // color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      // Text(
                      //   '.',
                      //   style: TextStyle(
                      //       fontSize: 17,
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      // SizedBox(
                      //   width: 7,
                      // ),
                      // Row(
                      //   children: [
                      //     FaIcon(
                      //       FontAwesomeIcons.linkedin,
                      //       color: Colors.white54,
                      //       size: 17,
                      //     ),
                      //     SizedBox(
                      //       width: 4,
                      //     ),
                      //     TextButton(
                      //       style: ButtonStyle(
                      //         foregroundColor:
                      //             MaterialStateProperty.resolveWith<Color>(
                      //                 (Set<MaterialState> states) {
                      //           if (states.contains(MaterialState.hovered))
                      //             return Colors.pinkAccent;
                      //           else {
                      //             return Colors.white;
                      //           }
                      //         }),
                      //       ),
                      //       onPressed: () {},
                      //       child: Text(
                      //         'linkedIn',
                      //         style: TextStyle(
                      //           fontSize: 17,
                      //           // color: Colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   width: 7,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 14),
            Center(
              child: const Text(
                'Copyright@2022|DigitalClarity',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
