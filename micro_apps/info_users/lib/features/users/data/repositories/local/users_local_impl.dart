import 'package:dartz/dartz.dart';
import 'package:info_users/features/users/data/datasources/local/users_local_datasource.dart';

import 'package:info_users/features/users/domain/entities/user.dart';

import '../../../domain/repositories/local/users_local_repository.dart';

class UsersLocalRepositoryImpl implements UserLocalRepository {
  @override
  Future<void> guardarUsuariosLocal({required List<User> users}) async {
    UsersLocalDataSource.instance.guardarUsuariosLocal(users: users);
  }

  @override
  Future<Either<Exception, User>> verUsuario({required User user}) async {
    return UsersLocalDataSource.instance.verUsuario(user: user);
  }

  @override
  Future<Either<Exception, List<User>>> cargarTodos() async {
    return UsersLocalDataSource.instance.cargarTodos();
  }
}
