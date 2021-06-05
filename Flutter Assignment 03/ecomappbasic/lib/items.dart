import 'package:flutter/material.dart';




class items extends StatefulWidget {
  const items({ Key? key }) : super(key: key);

  @override
  _itemsState createState() => _itemsState();
}

class _itemsState extends State<items> {
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
          fontWeight: FontWeight.bold),
          )),
          
          
          actions: <Widget>
          [
            IconButton(
              icon: Icon(Icons.add_alert),
              color: Colors.black,
              onPressed: (){

              },),],
              
      ),

        body: 
           Center(
             child: Column(
               
             
              children: [
                const SizedBox(height: 30),
                Expanded(     
      child: ListView(
        children: <Widget>[
              ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/iphone12.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
                
                
              ],),
              
              ),

                ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/Note 20 Ultra.jpeg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),

                ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/Macbook Air.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),

                ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/Macbook Pro.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),

                ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/Gaming PC.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),

               ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/ipad.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),

               ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/Macbook Pro.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),

               ListTile(
                leading: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),//or 15.0
  child: Container(
    height: 100.0,
    width: 100.0,
    
    //color: Color(0xffFF0E58),
    child: Image.asset('assets/samnotebook.jpg',height:200,width:120),
    
  
),            
              ),
              title: Text("20 Pieces"),
              subtitle: Text("Quantity:1 \n 5.0 (23 Reviews)"),
              isThreeLine: true,
              
              trailing: Column(children: [
                Text("\$90", style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )),
              ],),
              
              ),


              ]
              ))]
          ),
           ),
        

        
      
         
        )
      );
      
    
  }
}