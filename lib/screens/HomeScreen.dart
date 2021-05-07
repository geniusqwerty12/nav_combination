import 'package:flutter/material.dart';
import 'package:nav_combination/tabs/top/AboutScreen.dart';
import 'package:nav_combination/tabs/top/InfoScreen.dart';
import 'package:nav_combination/tabs/top/WelcomeScreen.dart';

import '../SideDrawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Home Screen will hold the drawer and tab bar navigation
class _HomeScreenState extends State<HomeScreen> {
  // List of tab screens
  List<Widget> _tabScreens = [
    WelcomeScreen(),
    InfoScreen(),
    AboutScreen()
  ];
  
  // List of the tab items
  List<Widget> _tabLists = [
    Tab(
      text: "Welcome",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "Info",
      icon: Icon(Icons.settings),
    ),
    Tab(
      text: "About",
      icon: Icon(Icons.fastfood),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Initialize the Tab controller
    return DefaultTabController(
      length: _tabScreens.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Home"),
          bottom: TabBar(
            // add the tab bar items
            tabs: _tabLists,
          ),
        ),
        // add the drawer widget here, we'll create it in a separate file
        drawer: SideDrawer(),
        // initialize the tab screens
        body: TabBarView(
          children: _tabScreens
        ),
      ),
    );
  }
}