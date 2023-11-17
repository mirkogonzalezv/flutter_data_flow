import 'package:dartz/dartz.dart';
import 'package:info_users/features/users/domain/entities/user.dart';
import 'package:info_users/features/users/domain/usecases/users_usecases.dart';

import '../../domain/repositories/remote/users_repository.dart';
import '../repositories/remote/users_repository_impl.dart';

class UsersUsescasesImpl implements UsersUsescases {
  final UserRepository _userRepository = UsersRepositoryImpl();

  @override
  Future<Either<List<User>, Exception>> ejecutar() async {
    var result = await _userRepository.obtenerDatos();
    return await result.when(
      exito: (data) {
        if (data.users == null) {
          right(Exception());
        }
        return left(data.users!);
      },
      fallo: (error) {
        return right(error);
      },
    );
  }
}
