import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/widgets/destination_carousel.dart';
import 'package:travel_app/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0; // initialize variable to get index which button is clicked
  int _currentTab = 0; // keep track of which tab is selected
  
  List <IconData> _icons = [ // list of clickable icon buttons from font awesome icons flutter package
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  // function to build each button
  _buildIcon(int index) { // index used from list _icons
    return GestureDetector(

      onTap: () {
        setState(() {
          _selectedIndex = index; // change _selectedIndex to the index of button pressed
        });
      },

      child: Container( // used to control the overall shape and size of each button
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).accentColor : Color(0xFFE7EBEE), // if button pressed it will chaange color if not it will remain the same color
          borderRadius: BorderRadius.circular(30.0) // shape of button (radius has to be 0.5 width to be a circle)
        ),
        
        child: Icon( // icon inside the button
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4) // if button pressed the icon will change color if not it will remain the same color
        ),
    
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
              
              // main screen title
              child: Text( 
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
            
            // Selectable Button Icon Row
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

            SizedBox(
              height: 20.0,
            ),
            
            // Destinations carousel at destination_carousel.dart
            DestinationCarousel(),

            SizedBox(
              height: 20.0,
            ),

            HotelCarousel()
            
          ],
        ),
      ),
 
      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,

        onTap: (int value) {
          setState(() { // so widget tree will re run whenever tapped
            _currentTab = value;  // so that _currentTab = value of the current index
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: '', // every navigation bar item must have a label
          ),
          
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://cdn5.vectorstock.com/i/1000x1000/44/49/avatar-icon-male-person-symbol-circle-user-vector-20924449.jpg') ,
            ),
            label: '',
          ),

          
        ],
      )
    );
  }
}
