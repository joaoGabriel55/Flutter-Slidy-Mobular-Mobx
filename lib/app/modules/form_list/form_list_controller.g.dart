// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormListController on _FormListBase, Store {
  final _$textAtom = Atom(name: '_FormListBase.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$listAtom = Atom(name: '_FormListBase.list');

  @override
  ObservableList<String> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(ObservableList<String> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$initAsyncAction = AsyncAction('init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$logoffAsyncAction = AsyncAction('logoff');

  @override
  Future logoff() {
    return _$logoffAsyncAction.run(() => super.logoff());
  }

  final _$_FormListBaseActionController =
      ActionController(name: '_FormListBase');

  @override
  dynamic setText(String value) {
    final _$actionInfo = _$_FormListBaseActionController.startAction();
    try {
      return super.setText(value);
    } finally {
      _$_FormListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic save() {
    final _$actionInfo = _$_FormListBaseActionController.startAction();
    try {
      return super.save();
    } finally {
      _$_FormListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove(int index) {
    final _$actionInfo = _$_FormListBaseActionController.startAction();
    try {
      return super.remove(index);
    } finally {
      _$_FormListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'text: ${text.toString()},list: ${list.toString()}';
    return '{$string}';
  }
}
