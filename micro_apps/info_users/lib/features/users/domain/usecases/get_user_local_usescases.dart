import 'package:dartz/dartz.dart';
import 'package:info_users/features/users/domain/entities/user.dart';

abstract class GetUserLocalUsesCases {
  Future<void> almacenarTodo({required List<User> users});
  Future<Either<Exception, List<User>>> cargarTodos();
  Future<Either<Exception, User>> buscarUnUsuario({required User user});
}
