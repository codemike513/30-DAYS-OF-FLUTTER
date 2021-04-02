// DAY 3 OF FLUTTER -> Functions, Classes, Routes, Theme and Text

/*
Methods/Functions -
-> Function inside a Class is called Method.
-> Function outside a Class is called Function.
-> We make a function with a return type and parameter(according to need)
-> If we want default value as parameter we give it in curly braces {}
-> If no need for default value we directly give the parameter
-> See the example below for bringVegetables() function

Widget build method -
-> It is of type Widget so it returns a Widget, as in Flutter Everything is a Widget.
-> BuildContext is its parameter
-> We have a class StatelessWidget and in it we override(as it is previously built) the build method.
-> Here a Widget is formed so the purpose of context is to give information that where a particular widget lies.

MaterialApp Widget -
-> title: To give a title to our App
-> home: To take a Class/Widget we have to create/run
-> debugShowCheckedModeBanner: false -> For Removing the Debug Sticker
-> theme: It takes ThemeData Widget an in it we use 
          -> primaryColor - To change the basic color
          -> primarySwatch -> To chnage all the color of icons and everything using COlors.colorname
          -> brightness -> To change theme of App Light/Dark
-> themeMode: It is used to make theme light/dark as ThemeMode.dark/light but as to use it we have to specify darkTheme in MaterialApp.
-> darkTheme: It uses ThemeData and in it Brightness.dark to make dark theme.

-> routes: These are used to Nagigate through different pages in our App.
           -> Routes uses Map and it takes a String and a Function, and the Function has a parameter BuildContext.
           -> Map has a Key and a Value here String an Function are Keys.
           -> Map is made with curly braces {}
           -> So in the Map we will give our routes
           -> As it takes String first so we will give name of route
           -> "/" is default and give its value and it means home so we have remove the home from MaterialApp, if we use home we cannot use default route.
           -> If we want to add more routes we can add then like as we give to a Website Ex-, "/home", "/login", etc and give their values.
-> initialRoute: This is used to make a route default
                 -> As we know "/" is a default route but if we want "/home" to be the initial route
                    so we can pass it to initialRoute
                 -> initialRoute: "/home" This makes the default route as "/home"

Class -
-> A BluePrint made of Objects
-> Contains Various methods and members and properties
-> Like we have a class HomePage in home_page.dart and we have used our HomePage() object in main.dart
-> Sometimes there is a confusion between object and function
   -> So see a Function starts with lowercase letter ex- build()
   -> If the Function has 2 words so it will be written as buildApp()
   -> But the object starts with uppercase Ex- HomePage(), LoginPage()

Text Widget -
-> In this first we give the text to be printed in ""
-> In this we can give style, alignment and other properties to our text
-> Suppose we want to give style we will use TextSyle to give the styling
   -> We can change the font size, font Weight, font color and many more properties


*/

import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    bringVegetables(rupees: 50);                        // -> Here we have given parameter as 50 it takes value as 50 and no need to give value of carryBag
    bringVegetables();                                  // -> Here we have not given any parameter so it takes the value as 100 and no need to give value of carryBag
    bringFruits(carryBag: true, rupees: 25);            // -> Here we have to give parameter of carryBag as we have used required keyword before it so we have given it true and as value of rupees is 50 it takes value as 25
    bringFruits(carryBag: false);                       // -> Here we have to give parameter of carryBag as we have used required keyword before it so we have given it false and as value of rupees is not given it takes value as 200
    */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Catalogue App",
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, brightness: Brightness.light),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),

      initialRoute: "/",
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }

  /* FUNCTION EXAMPLE -

  bringVegetables({bool carryBag, int rupees = 100}) {
    // Go to Market and bring Vegetables
  }

  bringFruits({@required bool carryBag, int rupees = 200}) {
    // Go to Market and bring Fruits
  }
  */
}
