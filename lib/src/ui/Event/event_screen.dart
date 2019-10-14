import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
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
          padding: EdgeInsets.fromLTRB(40.0, 100.0, 40.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'INICÍO DAS VENDAS',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                '10/02/2019',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                'INICÍO DO EVENTO',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                '30/02/2019 as 17h',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                'FIM DO EVENTO',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                '30/02/2019',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
