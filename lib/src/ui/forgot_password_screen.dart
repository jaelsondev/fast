import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2C2C2C),
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(40.0, 100.0, 40.0, 0.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(Icons.fastfood, size: 120.0, color: Color(0xFFFFBD00)),
                  SizedBox(height: 70.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF5C5C5C),
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        prefixIcon: Icon(Icons.mail_outline), // icon
                        hintText: "Email",
                        hintStyle: TextStyle(color: Color(0xFFAAAAAA)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFFBD00))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        )),
                    style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                    controller: emailController,
                    validator: (value) {
                      Pattern pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value))
                        return 'Insira um email válido';
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26.0, bottom: 26.0),
                    child: Container(
                      height: 42.0,
                      child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // print('Validado');
                            }
                          },
                          child: Text(
                            'Solicitar recuperação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Color(0xFFFFBD00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0))),
                    ),
                  ),
                ],
              ),
            )));
  }
}
