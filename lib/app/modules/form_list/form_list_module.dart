import 'package:flutter_slidy_modular/app/modules/form_list/form_list_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/modules/form_list/form_list_page.dart';

class FormListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FormListController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => FormListPage()),
      ];

  static Inject get to => Inject<FormListModule>.of();
}
