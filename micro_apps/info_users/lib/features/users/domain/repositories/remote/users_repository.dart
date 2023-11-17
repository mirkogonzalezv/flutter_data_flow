import 'package:client_api/client_api.dart';

import '../../../data/models/list_users_response.dart';

abstract class UserRepository {
  Future<ApiResult<ListUsersResponse>> obtenerDatos();
}
