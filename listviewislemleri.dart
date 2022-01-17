import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String>?
      student; //list? demek student adındaki listimiz boş olabilir demektir.

  @override
  void initState() {
    // for (int i = 0; i < 80;) {for ile eleman ekleyemedim bakıcam
    //   student!.add("tolunay");
    // }
    student = [
      "tolunay",
      "selin",
      "sebo",
      "aydo",
      "tolunay",
      "selin",
      "sebo",
      "aydo",
      "tolunay",
    ];
    //student=[]yaparsak bunu dolu kabul ediyor
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (student == null)
            ? const Center(
                child: Text(
                  "içerik bulunamadı",
                  style: TextStyle(color: Colors.black),
                ),
              )
            : SafeArea(
                child: listWidget(student!)) //student![1] ünlem işareti null
        );
  }

  // Widget gridviewWidget(List<String> student) {

  //   return GridView(//gridview her bir elemanını ayırabilmeye düzen işine yarabilir
  //       // ignore: prefer_const_constructors
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 2,
  //           crossAxisSpacing: 5,
  //           childAspectRatio: 1 / 2,
  //           mainAxisSpacing: 5.0),
  //       children: student
  //           .map((student) =>
  //               Container(color: Colors.amber, child: Text(student)))
  //           .toList());
  // }

  // Widget listWidget(List<String> student) {
  //   //listview yatayda bütün ekranı kaplar Column ise içinde bulunduğu widgeta bağlı dikey olarak
  //   //listWidget adlı bir method oluşturup kodu düzenliyoruz
  //   return ListView(
  //       children: student
  //           .map((student) =>
  //               Container(color: Colors.amber, child: Text(student)))
  //           .toList());
  //   //for döngüsü gibi listedeki elemanları nasıl göstermek istersen yazdırıyor
  // }
  Widget listWidget(List<String> student) {
    return ListView.separated(
        //listview az veride listview seperated ve builderi çoklu veride kullanabiliriz
        itemCount: student.length,
        separatorBuilder: (context, index) {
          return (index == 2 ||
                  index ==
                      4) //burda kısa bir if else ile indexi 2 ve 4 olan itemin altına divider çizgi ekledik
              ? const Divider(
                  color: Colors.black,
                  thickness: 1.5,
                )
              : const SizedBox(); //indexi 2 ve 4 dışındakilere içi boş sizedbox koyduk
        },
        itemBuilder: (context, index) {
          return listItemWidget(student[index]);
        });
  }

  Widget listItemWidget(String student) {
    return Text(student);
  }
}
