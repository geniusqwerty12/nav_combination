import 'package:flutter/material.dart';
import 'package:nav_combination/screens/HomeScreen.dart';
import 'package:nav_combination/screens/SettingsScreen.dart';
import 'package:nav_combination/screens/VideosScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      // This is aa example that combines the different navigation techniuques
      // The first route will have the drawer and tab bar
      // the second route will be a single page
      // the 3rd route will contain the bottom tab
      initialRoute: 'home',
      // Routes with specific navigations
      routes: {
        // check each routes here
        'home': (context) => HomeScreen(),
        'video': (context) => VideosScreen(),
        'settings': (context) => SettingsScreen()
      },  
    );
  }
}

