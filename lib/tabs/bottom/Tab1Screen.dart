import 'package:flutter/material.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "These bottom tabs...",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}