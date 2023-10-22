import 'package:flutter/material.dart';
import 'package:nav_combination/tabs/bottom/Tab1Screen.dart';
import 'package:nav_combination/tabs/bottom/Tab2Screen.dart';
import 'package:nav_combination/tabs/bottom/Tab3Screen.dart';

class VideosScreen extends StatefulWidget {
  VideosScreen({Key? key}) : super(key: key);

  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  // Variables needed by the bottom tab navigation
  int _index = 0;
  final List<Widget> _tabs = [Tab1Screen(), Tab2Screen(), Tab3Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
      ),
      body: IndexedStack(
        index: _index,
        children: _tabs,
      ),
      // body: _tabs[_index]
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Mail",
          )
        ],
      ),
    );
  }
}
