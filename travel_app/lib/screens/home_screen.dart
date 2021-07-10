import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <IconData> _icons = [ // list of clickable icon buttons from font awesome icons flutter package
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  // function to build each button
  _buildIcon(int index) { // index used from list _icons
    return Container( // used to control the overall shape and size of each button
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor, // color of button
        borderRadius: BorderRadius.circular(30.0) // shape of button (radius has to be 0.5 width to be a circle)
      ),
      
      child: Icon( // icon inside the button
        _icons[index],
        size: 25.0,
        color: Theme.of(context).primaryColor,
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // provide padding around the device so it doesnt interfere with its design
        child: ListView( // so that user can scroll through the page
        padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text( // screen title
                'What Would You Like To Find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            SizedBox(
              height: 20.0, // give space between screen title and icons
            ),

            Row( // so that buttons is arranged in a single row
              mainAxisAlignment: MainAxisAlignment.spaceAround, // adds even space between each button
              
              children: _icons.asMap().entries.map<Widget>(
                    (MapEntry map) => _buildIcon(map.key), // call the _buildIcon function to that all of the icons is outputed to the screen
                  ).toList(), 
                
                // other way of outputing buttons onto screen however inefficient 
                //_buildIcon(0) 
                //_buildIcone(1)
                //_buildIcone(1)
                //_buildIcone(1)
            ),
          
          ],
        ),
      )
    );
  }
}
