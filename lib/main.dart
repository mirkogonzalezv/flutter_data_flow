import 'package:flutter/material.dart';
import 'package:flutter_data_flow/app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:info_users/features/users/domain/entities/user.dart';

import 'common/hive_adapters/hive_adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  final adapters = [
    UserAdapter(),
  ];

  HiveRegisterAdapter().registerAdapterList(adapters);

  runApp(const MyApp());
}
