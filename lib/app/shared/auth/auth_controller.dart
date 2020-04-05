import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

enum AuthStatus { LOADING, LOGGEDIN, LOGOUT }

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  AuthStatus status = AuthStatus.LOADING;

  @observable
  FirebaseUser user;

  @action
  setUser(FirebaseUser value) {
    user = value;
    status = user == null ? AuthStatus.LOGOUT : AuthStatus.LOGGEDIN;
  }

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  @action
  Future logout() {
    return _authRepository.getLogout();
  }
}
