import 'package:flutter/material.dart';

import '../Event/event_screen.dart';
import '../Restaurant/restaurant_screen.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, 60.0, 0, 20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF343434),
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  prefixIcon:
                      Icon(Icons.search, color: Color(0xFFAAAAAA)), // icon
                  hintText: "Evento ou restaurante",
                  hintStyle: TextStyle(color: Color(0xFFAAAAAA)),
                  focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Theme.of(context).primaryColor),
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
                  Text("Eventos",
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
            height: 140.0,
            child: ListView(
              padding: const EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildEvents(
                    'https://images.unsplash.com/photo-1471967183320-ee018f6e114a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80',
                    "Show dos Casais"),
                buildEvents(
                    'https://images.unsplash.com/photo-1484494789010-20fc1a011197?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80',
                    "Happy Hour"),
                buildEvents(
                    'https://images.unsplash.com/photo-1471421298428-1513ab720a8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                    "Oktoberfest"),
                buildEvents(
                    'https://images.unsplash.com/photo-1484665754804-74b091211472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                    "Dia das mães")
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Text("Restaurantes",
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
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                buildRestaurants(
                    'https://img.freepik.com/free-vector/lamp-drink-logo_124994-67.jpg?size=338&ext=jpg',
                    "Queijoada"),
                buildRestaurants(
                    'https://img.freepik.com/free-vector/natural-food-typography-logo-design_106244-109.jpg?size=338&ext=jpg',
                    "Queijoada"),
                buildRestaurants(
                    'https://img.freepik.com/free-psd/flat-lay-italian-food-with-mock-up-logo_23-2148283456.jpg?size=626&ext=jpg',
                    "Queijoada"),
                buildRestaurants(
                    'https://img.freepik.com/free-vector/retro-logo-restaurant_1020-946.jpg?size=338&ext=jpg',
                    "Dia da mulher"),
                buildRestaurants(
                    'https://thumb7.shutterstock.com/thumb_large/3079847/644233561/stock-vector-burger-vintage-stamp-sticker-vector-644233561.jpg',
                    "Dia da mulher"),
                buildRestaurants(
                    'https://thumb1.shutterstock.com/thumb_large/169216216/1031672863/stock-vector-food-talk-logo-vector-logo-template-1031672863.jpg',
                    "Dia da mulher"),
                buildRestaurants(
                    'https://thumb1.shutterstock.com/thumb_large/1754906/741436366/stock-vector-food-logo-like-icon-fork-and-spoon-inside-circles-catering-concept-flat-line-vector-illustration-741436366.jpg',
                    "Dia da mulher")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildEvents(String uri, String title) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => EventScreen()));
        },
        child: Container(
          width: 140.0,
          height: 140.0,
          margin: EdgeInsets.only(right: 18.0),
          child: Stack(children: <Widget>[
            ClipRRect(
                borderRadius: new BorderRadius.circular(13.0),
                child: Image.network(
                  uri,
                  fit: BoxFit.cover,
                  height: 140,
                  width: 140,
                )),
            Column(
                verticalDirection: VerticalDirection.up,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 11),
                      color: Colors.black38,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.0),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),
                ]),
          ]),
        ));
  }

  Widget buildRestaurants(String uri, String title) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => RestaurantScreen()));
        },
        child: Container(
          width: 80.0,
          height: 80.0,
          margin: EdgeInsets.only(bottom: 18.0),
          child: Stack(children: <Widget>[
            ClipRRect(
                borderRadius: new BorderRadius.circular(13.0),
                child: Image.network(
                  uri,
                  fit: BoxFit.cover,
                  height: 80.0,
                  width: 80.0,
                )),
            // Column(
            //     verticalDirection: VerticalDirection.up,
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: <Widget>[
            //       Container(
            //           margin: EdgeInsets.only(bottom: 15),
            //           color: Colors.black38,
            //           child: Padding(
            //             padding: EdgeInsets.only(left: 6.0),
            //             child: Text(
            //               title,
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),
            //           )),
            //     ]),
          ]),
        ));
  }
}
