// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/colors.dart';


ThemeData themeData() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'poppins',
      // textTheme: textTheme(),
      // appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
  );


}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: kNeutralLight),
      gapPadding: 20);

  OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: kPrimaryBlue),
      gapPadding: 20);

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    focusedBorder: focusedOutlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kNeutralGray),
    bodyText2: TextStyle(color: kNeutralGray),
  );
}

// AppBarTheme appBarTheme() {
//   return AppBarTheme(
//     color: Colors.white,
//     elevation: 0,
//     systemOverlayStyle: SystemUiOverlayStyle.light,
//     iconTheme: IconThemeData(color: Colors.black),
//     centerTitle: true,
//     titleTextStyle: TextStyle(
//       color: Color(0XFF8B8B8B),
//       fontSize: 18,
//     ),
//   );
// }
