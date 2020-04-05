import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 2))
    //     .then((v) => {});
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
            // CircularProgressIndicator(backgroundColor: Colors.yellowAccent),
            RaisedButton(
              child: Text("View Pokémons"),
              color: Colors.yellow,
              onPressed: () {
                Modular.to.pushReplacementNamed("/home");
              },
            ),
            RaisedButton(
              child: Text("Form List"),
              color: Colors.yellow,
              onPressed: () {
                Modular.to.pushReplacementNamed("/form-list");
              },
            )
          ],
        )));
  }
}
