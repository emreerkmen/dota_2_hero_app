import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
    accentColor: Color(0xff1F1F27),
    textTheme: TextTheme(
      headline2: TextStyle(
        fontSize: 15.0,
      ),
      headline3: TextStyle(
        color: Color(0xffCFCBD9),
      ),
      headline4: GoogleFonts.bungeeInline(
        fontWeight: FontWeight.w600,
        color: Color(0xffCFCBD9),
      ),
      headline6: GoogleFonts.bungeeInline(
        fontWeight: FontWeight.w600,
        color: Color(0xffCFCBD9),
        fontSize: 25.0,
      ),
      subtitle2: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Color(0xff40bf7a)),
      bodyText1: TextStyle(fontSize: 17.0, color: Colors.white),
    ),
    appBarTheme: AppBarTheme(color: Color(0xff1f655d)));

final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xfff5f5f5),
  accentColor: Color(0xff60567a),
  unselectedWidgetColor: Colors.white, //For Radio button inactive color.
  textTheme: TextTheme(
    headline2: TextStyle(
      fontSize: 15.0,
    ),
    headline3: TextStyle(
      color: Color(0xff857e96),
    ),
    headline4: GoogleFonts.bungeeInline(
      fontWeight: FontWeight.w600,
      color: Color(0xff857e96),
    ),
    headline6: GoogleFonts.bungeeInline(
      fontWeight: FontWeight.w600,
      color: Color(0xff857e96),
      fontSize: 25.0,
    ),
    subtitle2: TextStyle(color: Colors.grey),
    subtitle1: TextStyle(color: Colors.white),
    bodyText1: TextStyle(fontSize: 17.0, color: Colors.white),
  ),
  appBarTheme: AppBarTheme(
      color: Color(0xff1f655d),
      actionsIconTheme: IconThemeData(color: Colors.white)),
);
