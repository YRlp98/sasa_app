import 'package:flutter/material.dart';
import 'package:sasa_app/home_screen.dart';
import 'package:sasa_app/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SaSa',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: HomeScreen(title: 'SaSa'),
    );
  }
}
