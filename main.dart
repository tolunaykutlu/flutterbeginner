import 'package:firstapp/Pageone.dart';
import 'package:firstapp/Pagethree.dart';
import 'package:firstapp/Pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  int index = 0;
  var pageList = [PageOne(), PageTwo(), PageThree()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigationBar"),
          leading: Icon(Icons.domain_sharp),
        ),
        body: pageList[index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_one_outlined),
              label: "stok",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined),
              label: "Fason",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined),
              label: "Three",
            ),
          ],
          currentIndex: index,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.white54,
          backgroundColor: Colors.black87,
          onTap: (secilenIndex) {
            setState(() {
              index = secilenIndex;
            });
          },
        ),
      ),
    );
  }
}

class MyHomePage {}
