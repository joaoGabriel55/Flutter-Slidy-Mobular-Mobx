import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/modules/form_list/components/item/item_widget.dart';
import 'package:flutter_slidy_modular/app/modules/form_list/form_list_controller.dart';

class FormListPage extends StatefulWidget {
  @override
  _FormListPageState createState() => _FormListPageState();
}

class _FormListPageState
    extends ModularState<FormListPage, FormListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setText,
        ),
        actions: <Widget>[
          Observer(builder: (_) {
            return IconButton(
              icon: Icon(Icons.add),
              onPressed: controller.text.isEmpty ? null : controller.save,
            );
          })
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (_, index) {
            return ItemWidget(index: index);
          },
        );
      }),
    );
  }
}
