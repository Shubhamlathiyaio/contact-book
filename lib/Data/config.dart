import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class con {
  static Widget tf(controller, String lable) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          label: Text("$lable"),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
