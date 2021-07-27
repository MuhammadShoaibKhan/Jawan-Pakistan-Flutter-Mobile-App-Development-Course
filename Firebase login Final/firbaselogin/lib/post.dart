import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firbaselogin/editDialog.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final Map data;

  Post({required this.data});

  @override
  Widget build(BuildContext context) {
    //print(data["id"]);
    void deletePost() async {
      try {
        FirebaseFirestore db = FirebaseFirestore.instance;
        await db.collection("posts").doc(data["id"]).delete();
      } catch (e) {
        print("There is an error");
      }
    }

    void editPost() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return EditDialog(data: data);
          });
    }

    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(
            data["url"],
            width: 100,
            height: 100,
          ),
          Text(data["title"]),
          Text(data["description"]),
          ElevatedButton(onPressed: deletePost, child: Text("Delete")),
          ElevatedButton(onPressed: editPost, child: Text("Edit")),
        ],
      ),
    );
  }
}
