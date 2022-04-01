import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wearedesigners/constants.dart';
import 'package:wearedesigners/screens/home/home_page.dart';
import 'package:wearedesigners/screens/product/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Are Designers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.orange,
        fontFamily: GoogleFonts.nunito().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomePage(),
    );
  }
}

