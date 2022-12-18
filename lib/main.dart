import 'package:digital_clarity/UI/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Digital Clarity',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.barlowTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const MyHomePage(),
        // MyHomePage(),
      );
    });
  }
}
