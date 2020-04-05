import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/modules/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(48),
              child: Image.asset("images/pokemon_logo.png"),
            ),
            RaisedButton(
              onPressed: controller.loginWithGoogle,
              color: Colors.yellow,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Image.asset("images/google-logo.png"),
                    margin: EdgeInsets.all(8),
                    height: 28,
                    width: 28,
                  ),
                  Text("Login with Google")
                ],
              ),
            )
          ],
        )));
  }
}
