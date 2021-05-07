import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

// In this case, the drawer will not change the body widget
// it will push a new screen to the stack

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.pushReplacementNamed(context, 'home');
                },
              ),

              ListTile(
                leading: Icon(Icons.personal_video),
                title: Text("Videos"),
                onTap: (){
                  Navigator.pushNamed(context, 'video');
                },
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){
                   Navigator.pushNamed(context, 'settings');
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}