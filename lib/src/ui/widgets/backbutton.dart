import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget backbutton(BuildContext context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.pop(context),
    ),
  );
}
