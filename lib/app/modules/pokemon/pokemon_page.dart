import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slider_modular/app/modules/home/home_controller.dart';
import 'package:flutter_slider_modular/app/shared/models/pokemon.dart';
import 'package:flutter_slider_modular/app/shared/utils/constants.dart';

class PokemonPage extends StatefulWidget {
  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          title: Observer(builder: (_) {
            if (homeController.pokemon.value == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            Pokemon pokemon = homeController.pokemon.value;
            return Text(pokemon.name.toUpperCase());
          })),
      backgroundColor: Colors.red,
      body: Observer(builder: (_) {
        if (homeController.pokemon.value == null) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.yellowAccent,
            ),
          );
        }
        Pokemon pokemon = homeController.pokemon.value;
        return Container(
          margin: EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Container(
                child: Image.network("$IMG_URL_BASE${pokemon.id}.png"),
              )),
              Center(
                  child: Text(
                "Height: ${pokemon.height}m",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black54),
              )),
              Center(
                  child: Text(
                "Weight: ${pokemon.weight}kg",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black54),
              )),
              Container(
                height: 8,
              ),
              Center(
                  child: Text(
                "Base experience",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.redAccent),
              )),
              Center(
                  child: Text(
                "${pokemon.baseExperience}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 56,
                    color: Colors.redAccent),
              ))
            ],
          ),
        );
      }),
    );
  }
}
