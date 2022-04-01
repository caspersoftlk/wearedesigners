import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wearedesigners/constants.dart';

TextStyle get subHeadlineStyle {
  return GoogleFonts.montserrat(
      textStyle: TextStyle(
          color: Get.isDarkMode ? lightGrayColor : Colors.grey));
}

TextStyle get subHeadlineStyle_bolt {
  return GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 14,
          color: Get.isDarkMode ? lightGrayColor : blackColor));
}

TextStyle get headlineStyle {
  return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Get.isDarkMode ? Colors.white : blackColor));
}

TextStyle get tabTextStyle {
  return GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Get.isDarkMode ? Colors.white : blackColor));
}

TextStyle get productHeaderTextStyle {
  return GoogleFonts.merriweather(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30,
          color:  Colors.white));
}

