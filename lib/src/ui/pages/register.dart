import 'package:flutter/material.dart';

var towns = [
  "Ahlone",
  "Kyee Myin Daing",
  "Bahan",
  "Pazundaung",
  "Insein",
  "Hlaing"
];
String _current = towns.elementAt(0);

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Register"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: "Name",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Phone",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Delivery Address",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Shop Name",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              // TextField(),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Postal Code -   ",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        style: TextStyle(color: Colors.black),
                        value: _current,
                        //isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            _current = newValue;
                          });
                        },
                        items: towns.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Text(
                      "1111111",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
              Divider(
                height: 10,
                color: Colors.black,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                color: Colors.red,
                child: Text(
                  "SUMMIT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => print("Register Acc"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
