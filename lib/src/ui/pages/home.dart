import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/pages/history.dart';
import 'package:wechannelmm/src/ui/pages/profile.dart';
import 'package:wechannelmm/src/ui/pages/shoppingcart.dart';
import 'package:wechannelmm/src/ui/widgets/itemcontainer.dart';
import 'package:wechannelmm/src/ui/widgets/space.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  item1() {
    return ItemContainer(
      image: "assets/images/2in1.png",
      name: "2 In 1",
      value: "3100",
    );
  }

  item2() {
    return ItemContainer(
      image: "assets/images/fine.png",
      name: "Fine",
      value: "2150",
    );
  }

  item3() {
    return ItemContainer(
      image: "assets/images/beon.png",
      name: "Beon",
      value: "2600",
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          space10(),
          Container(
            height: 60,
            color: Colors.red,
            child: Center(
                child: Text(
              "Product",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
          space10(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      height: 40,
                      color: Colors.redAccent[200],
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Nan Myaing",
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                  GridView.count(
                    padding: const EdgeInsets.all(10),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: (itemWidth / itemHeight),
                    children: [item1(), item2(), item3()],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
