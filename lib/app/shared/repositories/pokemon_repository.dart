import 'package:dio/dio.dart';
import 'package:flutter_slidy_modular/app/shared/models/pokemon.dart';

class PokemonRepository {
  final Dio dio;

  PokemonRepository(this.dio);

  Future<List<Pokemon>> getAllPokemons() async {
    var response = await dio.get("/pokemon");
    List<Pokemon> list = [];
    for (var json in (response.data['results'] as List)) {
      Pokemon pokemon = PokemonBuilder(list.length + 1, json['name']).build();
      list.add(pokemon);
    }
    return list;
  }

  Future<Pokemon> getPokemon(String name) async {
    var response = await dio.get("/pokemon/$name");

    Pokemon pokemon =
        (PokemonBuilder(response.data['id'], response.data['name'])
              ..baseExperience = response.data['base_experience']
              ..height = response.data['height']
              ..weight = response.data['weight'])
            .build();

    return pokemon;
  }
}
