import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cartitem(BuildContext context, String image, String price,
    String subtotal, String quat) {
  return Container(
    height: 100,
    child: ListTile(
      leading: Container(
        height: 200,
        width: 100,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
      title: Text("$price MMK"),
      subtitle: Text("Sub Total $subtotal MMK"),
      trailing: Text(quat),
    ),
  );
}
