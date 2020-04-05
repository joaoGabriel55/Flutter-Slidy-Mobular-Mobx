import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slider_modular/app/modules/pokemon/pokemon_page.dart';

class PokemonModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PokemonPage()),
      ];
}
