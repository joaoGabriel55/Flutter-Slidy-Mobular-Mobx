import 'package:flutter_slidy_modular/app/modules/form_list/form_list_module.dart';
import 'package:flutter_slidy_modular/app/modules/login/login_module.dart';
import 'package:flutter_slidy_modular/app/pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/app_controller.dart';
import 'package:flutter_slidy_modular/app/app_widget.dart';
import 'package:flutter_slidy_modular/app/modules/home/home_module.dart';
import 'package:flutter_slidy_modular/app/modules/pokemon/pokemon_module.dart';
import 'package:flutter_slidy_modular/app/pages/splash/splash_page.dart';
import 'package:flutter_slidy_modular/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:flutter_slidy_modular/app/shared/repositories/localstorage/local_storege_hive.dart';
import 'package:flutter_slidy_modular/app/shared/repositories/localstorage/local_storege_shared.dart';
import 'package:flutter_slidy_modular/app/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
        // Bind((i) => LocalStorageHive()),
        Bind<ILocalStorage>((i) => LocalStorageShared()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
        Router('/form-list', module: FormListModule()),
        Router('/pokemon', module: PokemonModule())
      ];
  // :text == param
  // text: args.params["text"],
  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
