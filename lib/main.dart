/*import 'package:flutter/material.dart';

import 'Screens/home/Home_Screen.dart';
//import 'package:furniture/Screens/home/Home_Screen.dart';


void main(){
  return runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light
        )
      ),
      home: HomeScreen (),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';

import 'Screens/home/Home_Screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // Here we set DM Sans as our default fonts
        // Now we also apply out text color to all flutter textTheme

        // Almost all of our app bar have this style
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),

      ),
      home: HomeScreen(),
    );
  }
}


