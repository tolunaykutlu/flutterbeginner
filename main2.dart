import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _userPasword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGİN PAGE")),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  Center(child: uName()),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Center(child: userPw()),
                  enter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField uName() {
    return TextFormField(
      style: TextStyle(fontSize: 18),
      controller: _username,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          labelText: "USER NAME",
          hintText: "Max2323",
          labelStyle: TextStyle(fontSize: 22),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }

  TextFormField userPw() {
    return TextFormField(
      style: TextStyle(fontSize: 18),
      controller: _userPasword,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          labelText: "PASSWORD",
          hintText: "qwer123",
          labelStyle: TextStyle(fontSize: 22),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }

  ElevatedButton enter() {
    return ElevatedButton(
        onPressed: () {
          setState(
            () {
              //variablın string içeriğini alırken .text kullandık.
              if (_username.text == "tolunay" && _userPasword.text == "admin") {
                print("tamam");
              } else
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("!!!!!!"),
                        content: Text("KULLANICI ADI VEYA PAROLA YANLIŞ"),
                      );
                    });
            },
          );
        },
        child: Text("Login"),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //materialapp tarzında butona şekil verme
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ))));
  }
}

class StockPage extends StatefulWidget {
  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
