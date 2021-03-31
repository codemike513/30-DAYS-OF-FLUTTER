// DAY 2 OF FLUTTER -> Dart Data Types and Scaffold

/*
DART DATA TYPES -

-> Integer Data Type(Takes Integer Values) -> int days = 30;
-> String Data Type(Takes Character or String Values) -> String name = "Mihir";
-> Double Data Type(Takes floating point values) -> double b = 5.24;
-> Boolean Data Type(Takes True or False) -> bool a = true;
-> Num Data Type(Can be used for integer as well as for double values) -> num temp = 30; OR num tem = 30.5;
-> Var Data Type(It's a Dynamic data type we don't have specify it's type it automatically generated it) -> var day = "Tuesday"; OR var day1 = 5;
-> Constant Data Type(Takes Constant values and data cannot be modified) -> const pi = 3.14;
-> Final Data Type(Same as constant but data can be modified)
Difference btw final and const
-> Suppose you have a List in final, so you can add to that List
-> But Suppose you have a List in const, so you cannot add to that List

String Interpolation -> Use $ symbol with our variable to extract its value and add to our Text.

Let's Learn Now Scaffold Widget ->
So we have made a new file as home_page.dart to use our widgets
We have just given the HomePage() App to home of Material App and imported our home_page.dart file to use it
*/

import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
