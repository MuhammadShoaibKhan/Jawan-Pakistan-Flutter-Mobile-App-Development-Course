// @dart=2.9

import 'package:firbaselogin/post.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  Stream<QuerySnapshot> postStream =
      FirebaseFirestore.instance.collection('posts').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
            child: StreamBuilder<QuerySnapshot>(
          stream: postStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return new ListView(
              children: snapshot.data.docs.map((DocumentSnapshot document) {
                Map data = document.data();
                return Post(
                  data: data,
                );
              }).toList(),
            );
          },
        )),
      ),
    );
  }
}
