import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/pages/history/completed.dart';
import 'package:wechannelmm/src/ui/pages/history/openorders.dart';
import 'package:wechannelmm/src/ui/pages/profile.dart';
import 'package:wechannelmm/src/ui/pages/shoppingcart.dart';
import 'package:wechannelmm/src/ui/widgets/backbutton.dart';
import 'package:wechannelmm/src/ui/widgets/space.dart';

List<Widget> pages = <Widget>[
  CompletedOrderPage(),
  OpenOrderPage(),
];

class HistoryPage extends StatefulWidget {
  static const routeName = '/home/history';
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

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
                  "Orders",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ],
            ),
          ),
          space10(),
          Container(
            color: Colors.red,
            child: TabBar(
              tabs: [
                Tab(
                  text: "OPEN ORDER",
                ),
                Tab(
                  text: "COMPLETED",
                ),
              ],
              controller: tabController,
              onTap: (value) {
                print(value);
              },
            ),
          ),
        ]));
  }
}
