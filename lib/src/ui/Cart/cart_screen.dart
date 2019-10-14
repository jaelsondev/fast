import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(top: 100, bottom: 20),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Text('2 itens',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 16)),
            ),
          ),
          Container(
              child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                buildItemCart(),
              ])),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 60, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Comentário',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Algum comentário",
                      filled: true,
                      fillColor: Colors.grey[100],
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  style: TextStyle(fontSize: 14),
                  // controller: nameController,,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Subtotal',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        )),
                    Text('R\$ 12,80',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Total',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        )),
                    Text('R\$ 12,80',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 190,
            height: 42.0,
            child: RaisedButton(
                onPressed: () {
                  // if (_formKey.currentState.validate()) {
                  //   // print('Validado');
                  // }
                },
                child: Text(
                  'Finalizar Pedido',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
        ]));
  }

  Widget buildItemCart() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(children: <Widget>[
        Container(
            width: 60,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.delete,
                size: 28,
                color: Colors.grey[500],
              ),
            )),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey[300]))),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45, width: .3),
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: ClipRRect(
                  borderRadius: new BorderRadius.circular(13.0),
                  child: Image.network(
                    'https://img.freepik.com/fotos-gratis/grupo-de-cupcakes-no-foco-seletivo-escuro_93675-40751.jpg?size=338&ext=jpg',
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 70.0,
                  )),
            ),
            Container(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      child: Text('Cupcake com cereja vermelha',
                          style: TextStyle(fontSize: 14)),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width - 146,
                        padding: EdgeInsets.only(bottom: 5, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text('R\$ 12,80',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    '2',
                                  ),
                                ),
                                SizedBox(width: 7),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ))
          ]),
        )
      ]),
    );
  }
}
