import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_slidy_modular/app/app_module.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_slidy_modular/app/modules/home/home_controller.dart';
import 'package:flutter_slidy_modular/app/modules/home/home_module.dart';

void main() {
  initModule(AppModule());
  initModule(HomeModule());
  HomeController home;

  setUp(() {
    home = HomeModule.to.get<HomeController>();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

    test("Set Value", () {
      // expect(home.pokemons.value, equals([]));
      // home.fetchPokemons();
      // expect(home.pokemons.value, equals([]));
    });
  });
}
