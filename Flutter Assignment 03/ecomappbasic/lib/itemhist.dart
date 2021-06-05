import 'package:flutter/material.dart';




class itemhist extends StatefulWidget {
  const itemhist({ Key? key }) : super(key: key);

  @override
  _itemhistState createState() => _itemhistState();
}

class _itemhistState extends State<itemhist> {
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
        
        body: Column(children: [
          const SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              hintText: "     Username",
            ),
          ),
           const SizedBox(height: 30),
          Column(
  children: <Widget>[
    Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.only(left:20.0),
        child: Text(
          "History", 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            
          ),
        ),
      ),
    ),
    const SizedBox(height: 30),


    


  
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/iphone12.jpg'),
        radius: 30),

        title: Text("Iphone 12",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
              subtitle: Text("5.0 (23 Reviews)"),
              
              
              trailing: Column(children: [
                Text("\$10", style: TextStyle(
                    fontSize: 20,
                )),
                
                
              ],),


          


    ),

    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/Note 20 Ultra.jpeg'),
        radius: 30),

        title: Text("Note 20 Ultra",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
              subtitle: Text("5.0 (23 Reviews)"),
              
              
              trailing: Column(children: [
                Text("\$10", style: TextStyle(
                    fontSize: 20,
                )),
                
                
              ],),


          


    ),

    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/Macbook Air.jpg'),
        radius: 30),

        title: Text("Macbook Air",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
              subtitle: Text("5.0 (23 Reviews)"),
              
              
              trailing: Column(children: [
                Text("\$10", style: TextStyle(
                    fontSize: 20,
                )),
                
                
              ],),


          


    ),

    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/Macbook Pro.jpg'),
        radius: 30),

        title: Text("Macbook Pro",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
              subtitle: Text("5.0 (23 Reviews)"),
              
              
              trailing: Column(children: [
                Text("\$10", style: TextStyle(
                    fontSize: 20,
                )),
                
                
              ],),


          


    ),

    
         
          
        ],)    
        ],)
        
          )
           
      
       


    );
  }
}