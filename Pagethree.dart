import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "boş",
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 45,
        ),
      ),
    );
  }
}
