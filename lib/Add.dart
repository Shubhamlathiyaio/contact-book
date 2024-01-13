import 'package:contact_book/Data/config.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {

  TextEditingController name=TextEditingController();
  TextEditingController contact=TextEditingController();
  TextEditingController user=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController city=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          con.tf(name,"Enter your name"),
          con.tf(contact,"Enter your contact"),
          con.tf(name,"Enter your user name"),
          con.tf(name,"Enter your name"),
          con.tf(name,"Enter your name"),
        ],
      ),
    );
  }
}
