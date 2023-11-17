import 'package:dartz/dartz.dart';
import 'package:info_users/features/users/domain/entities/user.dart';
import 'package:info_users/features/users/domain/repositories/local/users_local_repository.dart';
import 'package:info_users/features/users/domain/usecases/get_user_local_usescases.dart';

import '../repositories/local/users_local_impl.dart';

class GetUserLocalUsesCasesImpl extends GetUserLocalUsesCases {
  final UserLocalRepository _userLocalRepository = UsersLocalRepositoryImpl();
  @override
  Future<void> almacenarTodo({required List<User> users}) async {
    _userLocalRepository.guardarUsuariosLocal(users: users);
  }

  @override
  Future<Either<Exception, User>> buscarUnUsuario({required User user}) async {
    return _userLocalRepository.verUsuario(user: user);
  }

  @override
  Future<Either<Exception, List<User>>> cargarTodos() {
    return _userLocalRepository.cargarTodos();
  }
}
