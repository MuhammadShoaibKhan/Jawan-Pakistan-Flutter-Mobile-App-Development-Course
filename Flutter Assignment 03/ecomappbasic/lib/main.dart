import 'package:flutter/material.dart';

import 'home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: 
          Center(child: Text("Ecom App UI",
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold))),
          
          
          actions: <Widget>
          [
            IconButton(
              icon: Icon(Icons.add_alert),
              color: Colors.black,
              onPressed: (){

              },),],
              
      ),

        
        body: Home()),
      
    );
  }
}

