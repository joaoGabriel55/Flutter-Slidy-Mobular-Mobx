import 'package:flutter_slider_modular/app/shared/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokemonRepository repository;

  @observable
  ObservableFuture pokemons;

  @observable
  ObservableFuture pokemon;

  _HomeControllerBase(this.repository) {
    fetchPokemons();
  }

  @action
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }

  @action
  fetchPokemon(String name) async {
    pokemon = repository.getPokemon(name).asObservable();
  }
}
