// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$pokemonsAtom = Atom(name: '_HomeControllerBase.pokemons');

  @override
  ObservableFuture<dynamic> get pokemons {
    _$pokemonsAtom.context.enforceReadPolicy(_$pokemonsAtom);
    _$pokemonsAtom.reportObserved();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableFuture<dynamic> value) {
    _$pokemonsAtom.context.conditionallyRunInAction(() {
      super.pokemons = value;
      _$pokemonsAtom.reportChanged();
    }, _$pokemonsAtom, name: '${_$pokemonsAtom.name}_set');
  }

  final _$pokemonAtom = Atom(name: '_HomeControllerBase.pokemon');

  @override
  ObservableFuture<dynamic> get pokemon {
    _$pokemonAtom.context.enforceReadPolicy(_$pokemonAtom);
    _$pokemonAtom.reportObserved();
    return super.pokemon;
  }

  @override
  set pokemon(ObservableFuture<dynamic> value) {
    _$pokemonAtom.context.conditionallyRunInAction(() {
      super.pokemon = value;
      _$pokemonAtom.reportChanged();
    }, _$pokemonAtom, name: '${_$pokemonAtom.name}_set');
  }

  final _$fetchPokemonAsyncAction = AsyncAction('fetchPokemon');

  @override
  Future fetchPokemon(String name) {
    return _$fetchPokemonAsyncAction.run(() => super.fetchPokemon(name));
  }

  final _$logoffAsyncAction = AsyncAction('logoff');

  @override
  Future logoff() {
    return _$logoffAsyncAction.run(() => super.logoff());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic fetchPokemons() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchPokemons();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'pokemons: ${pokemons.toString()},pokemon: ${pokemon.toString()}';
    return '{$string}';
  }
}
