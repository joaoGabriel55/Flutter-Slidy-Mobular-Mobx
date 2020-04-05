import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/shared/auth/auth_controller.dart';
import 'package:flutter_slidy_modular/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:mobx/mobx.dart';

part 'form_list_controller.g.dart';

class FormListController = _FormListBase with _$FormListController;

abstract class _FormListBase with Store {
  final ILocalStorage _storage = Modular.get();

  @observable
  String text = '';

  @action
  setText(String value) => text = value;

  @observable
  ObservableList<String> list = <String>[].asObservable();

  _FormListBase() {
    init();
  }

  @action
  init() async {
    List<String> listLocal = await _storage.get('list');
    if (listLocal == null) {
      list = <String>[].asObservable();
    } else {
      list = listLocal.asObservable();
    }
  }

  @action
  save() {
    list.add(text);
    _storage.put('list', list);
  }

  @action
  remove(int index) {
    list.removeAt(index);
    _storage.put('list', list);
  }

  @action
  logoff() async {
    await Modular.get<AuthController>().logout();
    Modular.to.pushReplacementNamed('/login');
  }
}
