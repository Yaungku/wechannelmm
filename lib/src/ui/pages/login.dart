import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/pages/home.dart';
import 'package:wechannelmm/src/ui/pages/register.dart';
import 'package:wechannelmm/src/ui/widgets/space.dart';
import 'package:wechannelmm/src/ui/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Login",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset("assets/images/wechannelmm.png"),
                ),
                space20(),
                customtextfield("User Name"),
                space10(),
                customtextfield("Password"),
                space20(),
                FlatButton(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                ),
                space10(),
                FlatButton(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: () =>
                      Navigator.pushNamed(context, RegisterScreen.routeName),
                )
              ],
            ),
          ),
        ));
  }
}
