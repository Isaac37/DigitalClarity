import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'functions.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // 5
            Color(0xff0d47a1),
            Color(0xff0277bd),
          ],
          begin: FractionalOffset(0.2, 0.2),
          end: FractionalOffset(1.0, 2.0),
          stops: [0.1, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      height: 250,
      padding: const EdgeInsets.all(30),
      child: Padding(
        padding: const EdgeInsets.only(left: 70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Digital Clarity',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered))
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
                          ],
                        ),
                      ),
                      // Spacer(
                      //   flex: 0,
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Row(
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
                        ],
                      ),

                      Spacer(
                        flex: 7,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        foregroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.hovered))
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
                                        foregroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.hovered))
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
                                //         foregroundColor: MaterialStateProperty
                                //             .resolveWith<Color>(
                                //                 (Set<MaterialState> states) {
                                //           if (states
                                //               .contains(MaterialState.hovered))
                                //             return Colors.pinkAccent;
                                //           else {
                                //             return Colors.white;
                                //           }
                                //         }),
                                //       ),
                                //       onPressed: () {},
                                //       child: Flexible(
                                //         child: Text(
                                //           'linkedIn',
                                //           style: TextStyle(
                                //             fontSize: 17,
                                //             // color: Colors.white,
                                //           ),
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
                      Spacer(
                        flex: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            const SizedBox(height: 14),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 14),
            Center(
              child: const Text(
                'DigitalClarity | Copyright 2022. All Rights Reserved',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
