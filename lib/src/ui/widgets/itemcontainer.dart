import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  String image;
  String name;
  String value;
  ItemContainer({this.image, this.name, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              width: 170,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                color: Colors.red,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    )
                  ],
                )),
          ],
        ));
  }
}
