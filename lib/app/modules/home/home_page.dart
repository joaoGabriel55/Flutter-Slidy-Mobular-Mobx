import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/shared/models/pokemon.dart';
import 'package:flutter_slidy_modular/app/shared/utils/constants.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pokemóns"),
        ),
        backgroundColor: Colors.redAccent,
        body: Observer(builder: (_) {
          if (homeController.pokemons.error != null) {
            return Center(
              child: RaisedButton(
                  child: Text("Reload"),
                  onPressed: () {
                    homeController.fetchPokemons();
                  }),
            );
          }

          if (homeController.pokemons.value == null) {
            return Center(
              child: CircularProgressIndicator(
                  backgroundColor: Colors.yellowAccent),
            );
          }
          List<Pokemon> list = homeController.pokemons.value;
          return GridView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(
                  color: Colors.yellow,
                  child: InkWell(
                    onTap: () {
                      homeController
                          .fetchPokemon(list[index].name)
                          .then((res) => Modular.to.pushNamed('/pokemon'));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.network("$IMG_URL_BASE${index + 1}.png"),
                        ),
                        Text(list[index].name.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54))
                      ],
                    ),
                  ));
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          );
        }));
  }
}

// Navigator.pushNamed(context, '/user/${homeController.text}');
// Modular.to.pushNamed('/user/${homeController.text}');
