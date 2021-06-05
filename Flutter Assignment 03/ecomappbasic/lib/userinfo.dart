import 'package:flutter/material.dart';

class userinfo extends StatefulWidget {
  const userinfo({ Key? key }) : super(key: key);

  @override
  _userinfoState createState() => _userinfoState();
}

class _userinfoState extends State<userinfo> {
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
        

        body: Column(
          
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
          
          const SizedBox(height: 30),
          Row(children: [
             CircleAvatar(
        backgroundImage: AssetImage('assets/useravatar.png'),
        radius: 50),

        
  
        
        Column(
          
          children: [
          Text("User", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Text("abc@gmail.com", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
         const SizedBox(height: 30),
         Text("Logout",style: TextStyle(color: Colors.purple)),

        ]),
        
          ]),
        const SizedBox(height: 30),
         Padding(
           padding: const EdgeInsets.only(left:20.0),
           child: Text("Account Information", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20)),
         ),
         const SizedBox(height: 10),
         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Full Name", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
            
         ),

         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("User"),
            
         ),
           const SizedBox(height: 10),

            Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Email", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
            
         ),

         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("user@gmail.com"),
            
         ),
           const SizedBox(height: 10),

            Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Phone", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
            
         ),

         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("+0900-786 01"),
            
         ),
           const SizedBox(height: 10),

            Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Address", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
            
         ),

         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("New York, Random Street House No: 72"),
            
         ),
           const SizedBox(height: 10),

                       Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Gender", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
            
         ),

         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Male"),
            
         ),

           const SizedBox(height: 10),

                       Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("Date of Birth", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
            
         ),

         Padding(
            padding: const EdgeInsets.only(left: 30),
             child: Text("October 13, 1999"),
            
         ),

         


           

          
                
        ],),

        
     
       
     
                
        
      )

      
    );
  }
}