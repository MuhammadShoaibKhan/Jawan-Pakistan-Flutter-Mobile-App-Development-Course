// @dart=2.9

import 'package:flutter/material.dart';
import 'home.dart';

//my own imports
import 'horizontal_listview.dart';
import 'products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
                child: Text("Ecom App UI",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_alert),
                color: Colors.black,
                onPressed: () {},
              ),
            ],
          ),
          body: Home()),
    );
  }
}
