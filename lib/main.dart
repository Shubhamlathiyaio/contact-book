import 'package:contact_book/Add.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Login.dart';

void main()
{
  runApp(MaterialApp(
    routes: {
      'login':(context) => Login(),
      'add':(context) => Add(),
      'home':(context) => Home(),
    },initialRoute: 'add',
  ));
}