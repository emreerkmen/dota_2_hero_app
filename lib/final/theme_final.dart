import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.black,
  accentColor: Color(0xff40bf7a),
  textTheme: TextTheme(
      headline3: TextStyle(color: Color(0xffCFCBD9)),
      headline4: TextStyle(color: Color(0xffCFCBD9)),
      headline6: TextStyle(color: Color(0xffCFCBD9)),
      subtitle2: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Color(0xff40bf7a))),
  appBarTheme: AppBarTheme(color: Color(0xff1f655d)),
);

final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xfff5f5f5),
  accentColor: Color(0xff40bf7a),
  textTheme: TextTheme(
      headline3: TextStyle(color: Color(0xff857e96)),
      headline4: TextStyle(color: Color(0xff857e96)),
      headline6: TextStyle(color: Color(0xff857e96)),
      subtitle2: TextStyle(color: Colors.grey),
      subtitle1: TextStyle(color: Colors.white)),
  appBarTheme: AppBarTheme(
      color: Color(0xff1f655d),
      actionsIconTheme: IconThemeData(color: Colors.white)),
);
