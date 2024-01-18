import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class con {
  static SharedPreferences ?prefs;
  static Widget tf(controller, String lable) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          label: Text("$lable"),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
