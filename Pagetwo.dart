import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Fason Sayfası",
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 45,
        ),
      ),
    );
  }
}
