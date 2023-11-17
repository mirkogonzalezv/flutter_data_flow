import 'package:hive_flutter/hive_flutter.dart';

class HiveRegisterAdapter {
  void registerAdapterList(List<TypeAdapter> adapters) {
    for (var adapter in adapters) {
      Hive.registerAdapter(adapter);
    }
  }
}
