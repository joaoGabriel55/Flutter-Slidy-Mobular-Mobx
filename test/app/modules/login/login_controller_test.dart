import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_slidy_modular/app/modules/login/login_controller.dart';
import 'package:flutter_slidy_modular/app/modules/login/login_module.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(LoginModule());
  LoginController login;

  setUp(() {
    login = LoginModule.to.get<LoginController>();
  });

  group('LoginController Test', () {
    test("First Test", () {
      expect(login, isInstanceOf<LoginController>());
    });

    test("Set Value", () {
    });
  });
}
