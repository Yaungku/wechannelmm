import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/pages/history.dart';
import 'package:wechannelmm/src/ui/pages/profile.dart';
import 'package:wechannelmm/src/ui/widgets/backbutton.dart';
import 'package:wechannelmm/src/ui/widgets/shoppingcartitem.dart';
import 'package:wechannelmm/src/ui/widgets/space.dart';

class ShopCartPage extends StatefulWidget {
  static const routeName = '/home/shopcart';
  @override
  _ShopCartPageState createState() => _ShopCartPageState();
}

class _ShopCartPageState extends State<ShopCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () =>
                Navigator.pushNamed(context, ProfilePage.routeName),
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
        body: ListView(shrinkWrap: true, children: [
          space10(),
          Container(
            height: 60,
            color: Colors.red,
            child: Stack(
              children: [
                backbutton(context),
                Center(
                    child: Text(
                  "Shopping Chart",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ],
            ),
          ),
          space10(),
          cartitem(context, "assets/images/2in1.png", "3100", "3100", "1"),
          cartitem(context, "assets/images/2in1.png", "3100", "3100", "1")
        ]),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 40, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total = 22334 MMK"),
              ButtonTheme(
                height: kBottomNavigationBarHeight,
                child: FlatButton(
                  color: Colors.red,
                  child: Text("CONFIRM"),
                  onPressed: () {
                    print("Confirm Order");
                  },
                ),
              )
            ],
          ),
        ));
  }
}
