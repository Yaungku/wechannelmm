import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customtextfield(String label) {
  return TextField(
    decoration: InputDecoration(
        labelText: label, contentPadding: EdgeInsets.symmetric(horizontal: 10)),
  );
}
