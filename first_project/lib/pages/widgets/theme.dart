import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6),
      fontFamily: GoogleFonts.poppins().fontFamily);

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
  //color
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlueishColor = Color(0xff403b58);
}
