import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        body: Calculator(),
      ),
     
      
    );
  }
}

class Calculator extends StatefulWidget {
 

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var result = "";

  Widget btn(var textt){
  return ElevatedButton(onPressed: (){
    setState(() {
      result = result + textt;
     });

    
  }, child: Text(textt),style: ElevatedButton.styleFrom(primary: Colors.purple));
    //  child: style: ElevatedButton.styleFrom(primary: Colors.purple);
    
  
}



clearr(){
 setState(() {
   result = "";
 });
}

output(){
  Parser p = Parser();
  Expression exp = p.parse(result);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);

  setState(() {
    result = eval.toString();
  });

}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(result,style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold
            ),),
            
           
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
              btn("1"),
              btn("2"),
              btn("3"),
              btn("4"),
            ],),

            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              btn("5"),
              btn("6"),
              btn("7"),
              btn("8"),
            ],),

             Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
              btn("9"),
              btn("0"),
              btn("+"),
              btn("-"),
            ],),

             Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
              btn("*"),
              btn("/"),
              ElevatedButton(onPressed: clearr, child: Text("clear"), style: ElevatedButton.styleFrom(primary: Colors.redAccent)),
              ElevatedButton(onPressed: output, child: Text("=")),
            ],),
          ]
        ),
      )
      
    );
  }
}


