import 'package:dartz/dartz.dart';

import '../../entities/user.dart';

abstract class UserLocalRepository {
  Future<void> guardarUsuariosLocal({required List<User> users});
  Future<Either<Exception, List<User>>> cargarTodos();
  Future<Either<Exception, User>> verUsuario({required User user});
}
