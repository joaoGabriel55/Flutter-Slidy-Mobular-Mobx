import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/shared/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  AuthController auth = Modular.get();

  @observable
  bool loading = false;

  @action
  Future loginWithGoogle() async {
    try {
      loading = true;
      await auth.loginWithGoogle();
      Modular.to.pushReplacementNamed('/view-select');
    } catch (e) {
      loading = false;
    }
  }
}
