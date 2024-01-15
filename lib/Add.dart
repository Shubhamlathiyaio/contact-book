import 'dart:io';

import 'package:contact_book/Data/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dio=Dio();
    ImagePicker picker = ImagePicker();
    XFile ?image;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          con.tf(name, "Enter your name"),
          con.tf(contact, "Enter your contact",),
          con.tf(name, "Enter your user name"),
          con.tf(name, "Enter the password"),
          con.tf(name, "Enter your city"),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: image!=null ? Image(image: FileImage(File(image!.path))) : Text("Upload the Image"),
              )
            ],
          ),
          OutlinedButton(onPressed: () async {
            var response = await dio.get('https://firstserver123.000webhostapp.com/Prodect/add.php');
            print(response);
          }, child: Text('Add'))
        ],
      ),
    );
  }
}
