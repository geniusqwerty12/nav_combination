import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "About the app",
        style: TextStyle(
          fontSize: 24
        ),
      ),
    );
  }
}