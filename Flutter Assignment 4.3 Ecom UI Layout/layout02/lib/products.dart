import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: new GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            new Container(
                //Item Number 001
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/sams7lite.jpg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "Tablet",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 002
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/samtab6.jpg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "Tablet",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 001
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/PS4con.png',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "PS4",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 002
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/ps3_slim.png',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "PS3 Slim",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 001
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/s22_ultra.jpeg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "S22 Ultra",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 002
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/g20.jpg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "Nokia G20",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 001
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/hpomen17.JPG',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "HP Omen 17",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 002
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/Dell-7490.jpg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "Dell 7490",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 001
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/Inspiron-16-Plus.jpeg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "Inspiron 16",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
            new Container(
                //Item Number 002
                height: 250,
                width: 250,
                child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/popitems/vivo-v21-5g.jpg',
                            width: 200, height: 100, fit: BoxFit.contain),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "Vivo V21",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            "5.0 (23 Reviews)",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))),
          ],
        )));
  }
}
