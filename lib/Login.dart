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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () {
                Navigator.pushNamed(context, 'home');
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
