import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/pages/history.dart';
import 'package:wechannelmm/src/ui/pages/shoppingcart.dart';
import 'package:wechannelmm/src/ui/widgets/backbutton.dart';
import 'package:wechannelmm/src/ui/widgets/space.dart';
import 'package:wechannelmm/src/ui/widgets/textfield.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/home/profile';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.settings,
          ),
          onPressed: () => Navigator.pushNamed(context, ProfilePage.routeName),
        ),
        title: Text("WeChannel"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.timer),
            onPressed: () {
              Navigator.pushNamed(context, HistoryPage.routeName);
              print("Pressed history");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () =>
                Navigator.pushNamed(context, ShopCartPage.routeName),
          )
        ],
      ),
      body: ListView(children: [
        space10(),
        Container(
          height: 60,
          color: Colors.red,
          child: Stack(
            children: [
              backbutton(context),
              Center(
                  child: Text(
                "Profile",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
            ],
          ),
        ),
        // space20(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              customtextfield("Name"),
              customtextfield("Email"),
              customtextfield("Phone No"),
              customtextfield("Address"),
              customtextfield("Store Name"),
              customtextfield("Postal Code"),
              space20(),
              FlatButton(
                color: Colors.red,
                child: Text(
                  "LOG OUT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => print("Acc Logout"),
              )
            ],
          ),
        )
      ]),
    );
  }
}
