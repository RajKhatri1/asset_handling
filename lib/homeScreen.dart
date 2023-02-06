import 'package:flutter/material.dart';

class S1 extends StatefulWidget {
  const S1({Key? key}) : super(key: key);

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  List img = [
    "asset/images/muko.jpg",
    "asset/images/sundar.jpg",
    "asset/images/jeff.jpg",
    "asset/images/billgate.jpg",
    "asset/images/michael.jpg",
    "asset/images/muko.jpg",
    "asset/images/sundar.jpg",
    "asset/images/jeff.jpg",
    "asset/images/billgate.jpg",
    "asset/images/michael.jpg",
  ];
  List name = [
        "Mukesh Ambani",
        "Sundar Pichai",
        "Jeff Bezzoz",
        "Bill Gates",
        "Michael Dell",
        "Mukesh Ambani",
        "Sundar Pichai",
        "Jeff Bezzoz",
        "Bill Gates",
        "Michael Dell",
  ];
  List sub = [
    "RELAIENCE LTD.",
        "GOOGLE",
        "AMAZON",
        "MICROSOFT",
        "DELL",
    "RELAIENCE LTD.",
    "GOOGLE",
    "AMAZON",
    "MICROSOFT",
    "DELL",
  ];
  List C1 = [
    Colors.indigo,
    Colors.lightBlueAccent,
    Colors.indigo,
    Colors.lightBlueAccent,
    Colors.indigo,
    Colors.indigo,
    Colors.lightBlueAccent,
    Colors.indigo,
    Colors.lightBlueAccent,
    Colors.indigo,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("screen 1"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue.shade100,
          child:ListView.builder(itemCount:name.length,itemBuilder: (context, index) {
            return CEO (img[index],name[index],sub[index],C1[index]);
          },)
        ),
      ),
    );
  }

  Widget CEO(String img, String name, String sub, Color C1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: C1,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(360)),
                child: CircleAvatar(
                  backgroundImage: AssetImage("$img"),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("$sub",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ],
              ),
              Expanded(child: SizedBox()),
              Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
