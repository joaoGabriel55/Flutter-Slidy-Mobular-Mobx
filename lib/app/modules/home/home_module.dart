import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slider_modular/app/modules/home/home_controller.dart';
import 'package:flutter_slider_modular/app/shared/repositories/pokemon_repository.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokemonRepository>())),
        Bind((i) => PokemonRepository(i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router('/home', child: (_, args) => HomePage()),
      ];
}
