import 'dart:convert';
import 'dart:io';
import 'package:contact_book/Data/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

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
  ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        con.tf(name, "Enter your name"),
        con.tf(contact, "Enter your contact",),
        con.tf(user, "Enter your user name"),
        con.tf(password, "Enter the password"),
        con.tf(city, "Enter your city"),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: image != null
                    ? Image(image: FileImage(File(image!.path)))
                    : Text('Upload your image',style: TextStyle(fontSize: 24),)),
            OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Choose Image'),
                        actions: [
                          TextButton(
                              onPressed: () async {
                                image = await picker.pickImage(
                                    source: ImageSource.camera);
                                Navigator.pop(context);
                                setState(() {});
                              },
                              child: Text('Camera')),
                          TextButton(
                              onPressed: () async {
                                image = await picker.pickImage(
                                    source: ImageSource.gallery);
                                Navigator.pop(context);
                                setState(() {});
                              },
                              child: Text('Gallery')),
                        ],
                      );
                    },
                  );
                },
                child: Text('Upload image'))
          ],
        ),
        OutlinedButton(style: ButtonStyle(maximumSize: MaterialStatePropertyAll(Size(300, 100))),onPressed: () async {

              var img_data = base64Encode(await image!.readAsBytes());
              final data = FormData.fromMap({
              'name': '${name.text}',
              'contact': '${contact.text}',
              'user': '${user.text}',
              'password': '${password.text}',
              'city': '${city.text}',
              'image': '${img_data}',
              });
              final response = await dio.post('https://firstserver123.000webhostapp.com/Contact_book/add.php', data: data);
              print(response.data);

              }, child: Text('Add'))
      ]
      ),
    );
  }
}
