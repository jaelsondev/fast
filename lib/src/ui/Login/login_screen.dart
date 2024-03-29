import 'package:flutter/material.dart';

import '../Forgot/forgot_password_screen.dart';
import '../Home/home_screen.dart';
import '../Signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscurePassword;

  @override
  void initState() {
    _obscurePassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(40.0, 70.0, 40.0, 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(Icons.fastfood,
                      size: 120.0, color: Theme.of(context).primaryColor),
                  SizedBox(height: 70.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Theme.of(context).primaryColor,
                        ), // icon
                        hintText: "Email",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    controller: emailController,
                    validator: (value) {
                      Pattern pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value))
                        return 'Insira um email válido';
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Theme.of(context).primaryColor,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        // icon
                        hintText: "Senha",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    controller: passwordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira sua senha";
                      }
                      if (value.length < 8) {
                        return "A senha deve conter no mínimo 8 caracteres";
                      }
                    },
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ForgotPasswordScreen()));
                        },
                        child: Text(
                          "Esqueceu sua senha?",
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26.0, bottom: 26.0),
                    child: Container(
                      height: 42.0,
                      child: RaisedButton(
                          onPressed: () {
                            // if (_formKey.currentState.validate()) {
                            //   // print('Validado');
                            // }
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Home()));
                          },
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0),
                          ),
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, bottom: 30.0),
                    child: Container(
                      height: 42,
                      child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // print('Validado');
                            }
                          },
                          child: Text(
                            'Entrar com Facebook',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0),
                          ),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => SignupScreen()));
                        },
                        child: Text("Não possuí conta? ",
                            style: TextStyle(fontSize: 14.0)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => SignupScreen()));
                        },
                        child: Text("Crie uma",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
