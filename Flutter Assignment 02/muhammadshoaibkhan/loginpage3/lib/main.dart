import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "loginUi",
      
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/fifa.jpg', 
            fit: BoxFit.fill,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              
             
              children: <Widget>[
                 Text(
                                "Created By: Muhammad Shoaib Khan",
                                style: TextStyle(
                                  color: Colors.amber,
                                  backgroundColor: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                Image.asset("assets/images/tro2.png"
                ),

                Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                      height: 230.0,
                      width: 350.0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           
                           Padding(
                             padding: EdgeInsets.symmetric(
                               vertical: 10.0,
                             ), 
                             child:  TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText:"Username",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0)
                            ),


                          ),
                           ),

                           TextField(
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText:"Password",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0)
                            ),


                          ),

                         Padding(

                           padding: EdgeInsets.only(top: 8.0,bottom:8.0),
                           child:  Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                               
                              
                            
                          
                      
                            ],
                          ),

                          
                         ),

                         MaterialButton(
                           onPressed: () {},
                           minWidth: 250.0,
                           splashColor: Colors.red[800],
                           color: Colors.red,
                           padding: EdgeInsets.symmetric(
                             vertical: 12.0,
                           ),
                           child: Text(
                             "Login",
                             style: TextStyle(
                               fontSize: 18.0,
                               color: Colors.white,
                               ),
                           ),  

                           
                           
                         ),
                            
                          
                        ],

                       
                      ),
              
                      

                      )

                      
                    )

                      
                    
                  ]

                  

                )
                
               
              ],

              
           


          ),
                   

        ],
      ),
      
    );
  }
}