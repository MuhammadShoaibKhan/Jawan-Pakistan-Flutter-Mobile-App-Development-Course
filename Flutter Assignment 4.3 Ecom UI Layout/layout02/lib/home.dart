import 'package:flutter/material.dart';

//my own imports
import 'horizontal_listview.dart';
import 'products.dart';

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
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: <Widget>[
                SingleChildScrollView(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text("Items",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            child: Text("View More",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.purple,
                                )),
                          ),
                        ),
                      ]),
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/gpc.jpg',
                            width: 300, height: 200, fit: BoxFit.contain),
                        Image.asset('assets/images/ipad.jpg',
                            width: 300, height: 200, fit: BoxFit.contain),
                        Image.asset('assets/images/iphone12.jpg',
                            width: 300, height: 200, fit: BoxFit.contain),
                        Image.asset('assets/images/Macbook Air.jpg',
                            width: 300, height: 200, fit: BoxFit.contain),
                        Image.asset('assets/images/Macbook Pro.jpg',
                            width: 300, height: 200, fit: BoxFit.contain),
                        Image.asset('assets/images/mouse.jpg',
                            width: 300, height: 200, fit: BoxFit.contain),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text("More Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                ),
                const SizedBox(height: 10),
                HorizontalList(),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text("Popular Items",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            child: Text("View More",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.purple,
                                )),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 5),

                //grid View

                Container(
                  height: 320.0,
                  child: Products(),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.favorite),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.add_shopping_cart),
                label: 'Buy',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              )
            ],
          ),
        ));
  }
}
