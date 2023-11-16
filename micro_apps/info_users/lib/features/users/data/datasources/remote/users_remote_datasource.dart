import 'package:client_api/client_api.dart';
import 'package:info_users/features/users/data/models/list_users_response.dart';
import 'package:info_users/features/users/domain/entities/user.dart';
import 'package:info_users/features/users/domain/repositories/users_repository.dart';

class UsersRemoteDataSource implements UserRepository {
  UsersRemoteDataSource._privateConstructor();
  static final UsersRemoteDataSource _instance = UsersRemoteDataSource._privateConstructor();

  static UsersRemoteDataSource get instance => _instance;

  static const String _baseUrl = 'https://reqres.in';
  static String usersPath = '/api/users';

  @override
  Future<ApiResult<ListUsersResponse>> obtenerDatos() {
    return ApiClient.instance.request(
      RequestApi.get(_baseUrl + usersPath),
      (json) => ListUsersResponse.fromJson(json),
    );
  }

  @override
  Future<User> verUsuario(User user) {
    // TODO: implement verUsuario
    throw UnimplementedError();
  }
}
