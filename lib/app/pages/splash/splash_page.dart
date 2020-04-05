import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/shared/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 2))
    //     .then((v) => Modular.to.pushReplacementNamed('/login'));
    disposer = autorun((_) {
      final auth = Modular.get<AuthController>();
      if (auth.status == AuthStatus.LOGGEDIN) {
        Modular.to.pushReplacementNamed('/view-select');
      } else if (auth.status == AuthStatus.LOGOUT) {
        Modular.to.pushReplacementNamed('/login');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }

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
            CircularProgressIndicator(backgroundColor: Colors.yellowAccent)
          ])),
    );
  }
}
