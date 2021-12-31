import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final TextEditingController name = TextEditingController();
  final TextEditingController surname = TextEditingController();
  String s = "";
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Adınız",
                  hintText: "adınız",
                  border: OutlineInputBorder()),
              controller: name,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "soyadınız",
                      hintText: "soyadınız",
                      border: OutlineInputBorder()),
                  controller: surname,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.amber)), //buttona renk ve stil vermek için
            onPressed: () => {
              //s = "adım " + name.text,/ ikinci yol
              debugPrint(s),
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("adın ne"),
                      content: Text("adım " +
                          name.text +
                          " soyadım " +
                          surname.text), //birinci yol
                    );
                  })
            },
            child: Text("Tıkla öğren"),
          )
        ],
      ),
    ]);
  }
}
