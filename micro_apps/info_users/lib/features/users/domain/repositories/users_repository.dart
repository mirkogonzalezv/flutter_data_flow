import 'package:client_api/client_api.dart';

import '../../data/models/list_users_response.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<ApiResult<ListUsersResponse>> obtenerDatos();
  Future<User> verUsuario(User user);
}
