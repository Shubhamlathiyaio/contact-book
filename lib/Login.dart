import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Data/config.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  Dio dio=Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 100,
          ),
          con.tf(user, 'Enter user name'),
          con.tf(password, 'Enter user password'),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () async {
                final response = await dio.post('https://firstserver123.000webhostapp.com/Contact_book/view.php');
                // print(response);
                List m=jsonDecode(response.data);
                print(m);
                // Navigator.pushNamed(context, 'home');
              },
              child: Text('Submit')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text('Forgot Passeord')),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'add');
                  },
                  child: Text('New User'))
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
