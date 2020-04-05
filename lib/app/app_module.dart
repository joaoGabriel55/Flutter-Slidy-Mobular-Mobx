import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slider_modular/app/app_controller.dart';
import 'package:flutter_slider_modular/app/app_widget.dart';
import 'package:flutter_slider_modular/app/modules/home/home_module.dart';
import 'package:flutter_slider_modular/app/modules/pokemon/pokemon_module.dart';
import 'package:flutter_slider_modular/app/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/pokemon', module: PokemonModule())
      ];
  // :text == param
  // text: args.params["text"],
  @override
  Widget get bootstrap => AppWidget();
}
