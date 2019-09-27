import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscurePassword;
  bool _obscureConfirmPassword;

  @override
  void initState() {
    _obscurePassword = true;
    _obscureConfirmPassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(Icons.fastfood,
                      size: 120.0, color: Theme.of(context).primaryColor),
                  SizedBox(height: 70.0),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Theme.of(context).primaryColor,
                        ), // icon
                        hintText: "Nome",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    controller: nameController,
                    validator: (value) {
                      if (value.isEmpty) return 'Informe o seu nome';
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        prefixIcon: Icon(Icons.mail_outline,
                            color: Theme.of(context).primaryColor), // icon
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
                      RegExp regex = new RegExp(pattern);
                      if (!regex.hasMatch(value))
                        return 'Insira um email válido';
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        prefixIcon: Icon(Icons.lock_outline,
                            color: Theme.of(context).primaryColor), // icon
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
                  TextFormField(
                    obscureText: _obscureConfirmPassword,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        prefixIcon: Icon(Icons.lock_outline,
                            color: Theme.of(context).primaryColor), // icon
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword =
                                  !_obscureConfirmPassword;
                            });
                          },
                        ),
                        hintText: "Confirme sua senha",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Confirme sua senha";
                      }
                      if (value != passwordController.text) {
                        return "A senha não são iguais";
                      }
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
                            'Cadastrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text("Já possuí conta? ",
                            style: TextStyle(fontSize: 14.0)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text("Fazer login",
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
