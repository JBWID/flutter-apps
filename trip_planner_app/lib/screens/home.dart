import 'package:flutter/material.dart';
import 'package:trip_planner_app/shared/screenTitle.dart';
import 'package:trip_planner_app/shared/tripList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"), 
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            SizedBox(
              height: 160,
              child: ScreenTitle(text: 'Trip Planner'),
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        )
      )
    );
  }
}

