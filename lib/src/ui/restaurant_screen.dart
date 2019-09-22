import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/restaurant.dart';
import 'event_screen.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282828),
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF343434),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    // prefixIcon:
                    //     Icon(Icons.search, color: Color(0xFFAAAAAA)), // icon
                    hintText: "Digite o numero da mesa",
                    hintStyle: TextStyle(color: Color(0xFFAAAAAA)),
                    focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide(color: Color(0xFFFFBD00)),
                        // borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(13.0)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                      borderSide: BorderSide.none,
                    )),
                style: TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
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
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color(0xFF2C2C2C),
        backgroundColor: Color(0xFF2C2C2C),
        selectedItemColor: Color(0xFFFD7A4A),
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              activeIcon: Icon(Icons.home, color: Color(0xFFFD7A4A)),
              title: Text('Início')),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.search, color: Colors.white),
          //     activeIcon: Icon(Icons.search, color: Color(0xFFFD7A4A)),
          //     title: Text('Pesquisar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              activeIcon: Icon(Icons.shopping_cart, color: Color(0xFFFD7A4A)),
              title: Text('Carrinho')),
          BottomNavigationBarItem(
              icon: Icon(Icons.face, color: Colors.white),
              activeIcon: Icon(Icons.face, color: Color(0xFFFD7A4A)),
              title: Text('Perfil'))
        ],
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
