import 'package:flutter/material.dart';
import 'package:formula1_app/bottom_navabr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formula 1',
      home: BottomNavBar(),
    );
  }
}