import 'package:flutter/material.dart';
import 'package:wechannelmm/src/ui/widgets/itemcontainer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("WeChannel"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.timer),
            onPressed: () {
              print("Pressed history");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () => print("Shop"),
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
                  space10(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[item1(), item2()],
                  ),
                  space10(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[item3()],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
