import 'package:ecomappbasic/itemhist.dart';
import 'package:ecomappbasic/items.dart';
import 'package:ecomappbasic/userinfo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          const SizedBox(height: 50),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              text: 'Flutter Ecommerce App Created By:\n',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  backgroundColor: Colors.lime),
              children: [
                TextSpan(
                  text: 'Muhammad Shoaib Khan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      backgroundColor: Colors.lime),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
            //style: style,
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>userinfo()));
            },
            child: const Text('User Info Page'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
           // style: style,
            onPressed: () {
               Navigator.push(context,
              MaterialPageRoute(builder: (context)=>items()));
           
            },
            child: const Text('Items Page'),
          ),

          const SizedBox(height: 30),
          ElevatedButton(
           // style: style,
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>itemhist()));
           
            },
            child: const Text('Items History Page'),
          ),
        ],
      ),
      )  
    );
    
  }
}
