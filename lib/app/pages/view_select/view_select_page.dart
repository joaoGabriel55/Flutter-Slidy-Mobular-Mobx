import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ViewSelectPage extends StatefulWidget {
  final String title;
  const ViewSelectPage({Key key, this.title = "ViewSelect"}) : super(key: key);

  @override
  _ViewSelectPageState createState() => _ViewSelectPageState();
}

class _ViewSelectPageState extends State<ViewSelectPage> {
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
      )),
    );
  }
}
