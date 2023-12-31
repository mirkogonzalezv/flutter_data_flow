import 'package:client_api/domain/models/api_result.dart';
import 'package:info_users/features/users/data/datasources/remote/users_remote_datasource.dart';

import 'package:info_users/features/users/data/models/list_users_response.dart';

import '../../../domain/repositories/remote/users_repository.dart';

class UsersRepositoryImpl implements UserRepository {
  @override
  Future<ApiResult<ListUsersResponse>> obtenerDatos() async {
    return UsersRemoteDataSource.instance.obtenerDatos();
  }
}
