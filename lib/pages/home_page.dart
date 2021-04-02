/*
HomePage File 
-> Importing the Flutter Material Package
-> Creating a Slatless Widget
-> Returning a Scaffold Widget
   -> It Contains appBar which is at the top of our app it takes a 
      title(It doesn't take a text directly so we pass a Text Widget to it) and various different parameters.
   -> It has an body in which we give more widgets like Center Container, etc.
   -> Here we also have used drawer in Scaffold which used a Drawer widget and an App Drawer gets created in our app. 

-> Now we just pass our HomePage App to the Material App in our main.dart file.
*/

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Mihir";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
