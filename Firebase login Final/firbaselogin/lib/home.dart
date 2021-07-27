// @dart=2.9

import 'dart:io' as i;

import 'package:firbaselogin/post.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as path;

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  String imagePath;

  Stream<QuerySnapshot> postStream =
      FirebaseFirestore.instance.collection('posts').snapshots();

  @override
  Widget build(BuildContext context) {
    void pickImage() async {
      final ImagePicker _picker = ImagePicker();
      final XFile image = await _picker.pickImage(source: ImageSource.gallery);

      setState(() {
        imagePath = image.path;
      });
      print(image.path);
    }

    void submit() async {
      try {
        String title = titleController.text;
        String description = descriptionController.text;

        String imageName = path.basename(imagePath);

        firebase_storage.Reference ref = firebase_storage
            .FirebaseStorage.instance
            .ref('/$imageName'); //String Interpolation

        i.File file = i.File(imagePath);
        await ref.putFile(file);

        String downloadURL = await ref.getDownloadURL();
        FirebaseFirestore db = FirebaseFirestore.instance;
        await db.collection("posts").add(
            {"title": title, "description": description, "url": downloadURL});

        print("Post uploaded successfully");
        titleController.clear();
        descriptionController.clear();
      } catch (e) {
        print("There is an error");
      }
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
            child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Enter title'),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Enter description'),
            ),
            ElevatedButton(onPressed: pickImage, child: Text("Pick an image")),
            ElevatedButton(onPressed: submit, child: Text("Submit a post")),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: StreamBuilder<QuerySnapshot>(
                  stream: postStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading");
                    }

                    return new ListView(
                      children:
                          snapshot.data.docs.map((DocumentSnapshot document) {
                        Map data = document.data();
                        String id = document.id;
                        data["id"] = id;
                        return Post(
                          data: data,
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
