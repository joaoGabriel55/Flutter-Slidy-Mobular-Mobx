import 'package:flutter_slider_modular/app/shared/repositories/localstorage/local_storage_interface.dart';

class LocalStorageMock implements ILocalStorage {
  List<String> storage;

  @override
  Future delete(String key) {
    return null;
  }

  @override
  Future<List<String>> get(String value) async {
    return storage;
  }

  @override
  Future put(String key, List<String> value) async {
    return storage = value;
  }
}
