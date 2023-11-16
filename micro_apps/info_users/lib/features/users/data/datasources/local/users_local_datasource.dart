import 'package:client_api/domain/models/api_result.dart';
import 'package:info_users/features/users/data/models/list_users_response.dart';
import 'package:info_users/features/users/domain/entities/user.dart';
import 'package:info_users/features/users/domain/repositories/users_repository.dart';

class UsersLocalDataSource implements UserRepository {
  @override
  Future<ApiResult<ListUsersResponse>> obtenerDatos() {
    // Logica para cargar los datos desde la base de datos local
    throw UnimplementedError();
  }

  @override
  Future<User> verUsuario(User user) {
    // Logica para cargar un usuario de forma local

    throw UnimplementedError();
  }
}
