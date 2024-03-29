import 'dart:convert';

import 'package:flutter/material.dart';

import '../../models/restaurant.dart';
import '../Event/event_screen.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20.0),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Cardápio",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 20.0),
                children: <Widget>[
                  buildEvents(
                      'https://images.unsplash.com/photo-1471967183320-ee018f6e114a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80',
                      "Frango Assado",
                      10),
                  buildEvents(
                      'https://images.unsplash.com/photo-1484494789010-20fc1a011197?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80',
                      "Baião",
                      10),
                  buildEvents(
                      'https://images.unsplash.com/photo-1471421298428-1513ab720a8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                      "Oktoberfest",
                      10),
                  buildEvents(
                      'https://images.unsplash.com/photo-1471421298428-1513ab720a8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                      "Oktoberfest",
                      10),
                  buildEvents(
                      'https://images.unsplash.com/photo-1471421298428-1513ab720a8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                      "Oktoberfest",
                      10),
                  buildEvents(
                      'https://images.unsplash.com/photo-1471421298428-1513ab720a8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                      "Oktoberfest",
                      10),
                  buildEvents(
                      'https://images.unsplash.com/photo-1484665754804-74b091211472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                      "Dia das mães",
                      10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEvents(String uri, String title, double price) {
    return Container(
      width: 140.0,
      height: 90.0,
      margin: EdgeInsets.only(bottom: 18.0),
      child: Row(children: <Widget>[
        SizedBox(
            width: 80.0,
            child: ClipRRect(
                borderRadius: new BorderRadius.circular(13.0),
                child: Image.network(
                  uri,
                  fit: BoxFit.cover,
                  height: 90,
                  width: 60,
                ))),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Frango Assado",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 25.0, top: 10),
                  height: 20,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Color(0xFF5C5C5C),
                  ),
                  child: Center(
                    child: Text(
                      "R\$ 11.90",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 25.0, top: 10),
                  height: 30,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Color(0xFF5C5C5C),
                  ),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Text(
                          'Add',
                          style: TextStyle(fontSize: 12),
                        ),
                        new Icon(
                          Icons.shopping_cart,
                          size: 16,
                        ),
                      ],
                    ),
                  )),
            ])),
      ]),
    );
  }
}
