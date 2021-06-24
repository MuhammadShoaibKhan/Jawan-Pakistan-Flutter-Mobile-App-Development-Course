import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/cats/fridge.png',
            image_caption: 'Fridges',
          ),
          Category(
            image_location: 'assets/cats/computer.png',
            image_caption: 'Computers',
          ),
          Category(
            image_location: 'assets/cats/game-controller.png',
            image_caption: 'Game Controllers',
          ),
          Category(
            image_location: 'assets/cats/printer.png',
            image_caption: 'Printers',
          ),
          Category(
            image_location: 'assets/cats/router.png',
            image_caption: 'Routers',
          ),
          Category(
            image_location: 'assets/cats/tablet.png',
            image_caption: 'Tablets',
          ),
          Category(
            image_location: 'assets/cats/toaster.png',
            image_caption: 'Toaster',
          ),
          Category(
            image_location: 'assets/cats/washing-machine.png',
            image_caption: 'Washing Machine',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 70.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
