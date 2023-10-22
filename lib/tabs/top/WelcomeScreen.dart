import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to Flutter Navigation",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
