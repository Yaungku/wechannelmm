import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/pages/home.dart';
import 'package:wechannelmm/src/ui/pages/register.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  space10() {
    return SizedBox(
      height: 10,
    );
  }

  space20() {
    return SizedBox(
      height: 20,
    );
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset("assets/images/wechannelmm.png"),
                ),
                space20(),
                TextField(
                  decoration: InputDecoration(
                      labelText: "User Name",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
                space10(),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
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
