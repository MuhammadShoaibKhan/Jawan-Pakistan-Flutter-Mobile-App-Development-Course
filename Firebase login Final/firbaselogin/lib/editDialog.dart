import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as path;
import 'dart:io' as i;

class EditDialog extends StatefulWidget {
  final Map data;

  EditDialog({required this.data});

  @override
  _EditDialogState createState() => _EditDialogState();
}

class _EditDialogState extends State<EditDialog> {
  late String imagePath;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();

    titleController.text = widget.data["title"];
    descriptionController.text = widget.data["description"];
  }

  @override
  Widget build(BuildContext context) {
    void pickImage() async {
      final ImagePicker _picker = ImagePicker();
      final image = await _picker.pickImage(source: ImageSource.gallery);

      setState(() {
        imagePath = image!.path;
      });
      print(image!.path);
    }

    void done() async {
      try {
        String imageName = path.basename(imagePath);

        firebase_storage.Reference ref = firebase_storage
            .FirebaseStorage.instance
            .ref('/$imageName'); //String Interpolation

        i.File file = i.File(imagePath);
        await ref.putFile(file);

        String downloadURL = await ref.getDownloadURL();
        FirebaseFirestore db = FirebaseFirestore.instance;

        Map<String, dynamic> newPost = {
          "title": titleController.text,
          "description": descriptionController.text,
          "url": downloadURL
        };
        await db.collection("posts").doc(widget.data["id"]).set(newPost);
        Navigator.of(context).pop();
      } catch (e) {
        print("There is an error.");
      }
    }

    return AlertDialog(
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            ElevatedButton(onPressed: done, child: Text("Done")),
          ],
        ),
      ),
    );
  }
}
