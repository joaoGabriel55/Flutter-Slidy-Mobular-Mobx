import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_slider_modular/app/app_module.dart';
import 'package:flutter_slider_modular/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:flutter_slider_modular/app/shared/repositories/localstorage/local_storage_mock.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_slider_modular/app/modules/form_list/form_list_controller.dart';
import 'package:flutter_slider_modular/app/modules/form_list/form_list_module.dart';

void main() {
  initModule(AppModule(), changeBinds: [
    Bind<ILocalStorage>((i) => LocalStorageMock()),
  ]);
  initModule(FormListModule());

  FormListController formlist;

  setUp(() {
    formlist = FormListModule.to.get<FormListController>();
  });

  group('FormListController Test', () {
    test("save item", () {
      formlist.text = "Test";
      formlist.save();
      expect(formlist.list.length, 1);
      expect(formlist.list[0], 'Test');
    });

    test("remove item", () async {
      formlist.text = "Test";
      formlist.save();

      formlist.remove(0);

      expect(formlist.list.length, 0);
      List<String> storage = await Modular.get<ILocalStorage>().get('key');
      expect(storage.isEmpty, true);
    });
  });
}
