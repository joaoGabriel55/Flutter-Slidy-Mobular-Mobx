import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slider_modular/app/modules/form_list/form_list_controller.dart';

class ItemWidget extends StatelessWidget {
  final int index;
  // Same instance
  final FormListController controller = Modular.get();

  ItemWidget({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(controller.list[index]),
      trailing: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            controller.remove(index);
          }),
    );
  }
}
