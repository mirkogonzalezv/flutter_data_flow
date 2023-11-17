import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:info_users/features/users/domain/entities/user.dart';
import 'package:info_users/features/users/domain/repositories/local/users_local_repository.dart';

class UsersLocalDataSource implements UserLocalRepository {
  UsersLocalDataSource._privateConstructor();
  static final UsersLocalDataSource _instance = UsersLocalDataSource._privateConstructor();

  static UsersLocalDataSource get instance => _instance;

  final String _usersBox = 'users_box';
  final String _userKey = 'data';

  @override
  Future<void> guardarUsuariosLocal({required List<User> users}) async {
    var box = await Hive.openBox<List<User>>(_usersBox);
    box.put(_userKey, users);
  }

  @override
  Future<Either<Exception, User>> verUsuario({required User user}) async {
    try {
      var box = await Hive.openBox<List<User>>(_usersBox);
      final usuarios = box.get(_userKey);

      final usuario = usuarios!.firstWhere((User findUser) => user.id == findUser.id);

      return right(usuario);
    } on Exception catch (e) {
      return left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, List<User>>> cargarTodos() async {
    try {
      var box = await Hive.openBox<List<User>>(_usersBox);
      final usuarios = box.get(_userKey);
      return right(usuarios!);
    } on Exception catch (e) {
      return left(Exception(e));
    }
  }
}
