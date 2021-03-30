// DAY 1 OF FLUTTER -> Made a Basic First APP

/*
-> Importing the Flutter Material Package
-> Main Method 
-> runApp Method to run our app and give our app as parameter
-> Creating a Stateless Widget
-> MAterialApp Widget to make our App
-> Material Widget to give a better UI to App
-> Center Widget to center our Widgets
-> Container Widget to make a Container
-> Text Widget to Display our Text
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Center(                                           
          child: Container(
            child: Text("Welcome to 30 days of Flutter"),
          ),
        ),
      ),
    );
  }
}