import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Info here!",
        style: TextStyle(
          fontSize: 24
        ),
      ),
    );
  }
}