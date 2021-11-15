import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volo/utils/constants.dart';
import 'package:volo/utils/theme.dart';
import 'package:volo/screens/homeScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      //theme: CustomTheme.lightTheme,
    );
  }
}


