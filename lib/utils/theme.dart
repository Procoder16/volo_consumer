import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xffF5F5F5),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Color(0xff191919),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          centerTitle: true,
        ));
  }
}
