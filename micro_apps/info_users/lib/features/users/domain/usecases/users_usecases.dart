import '../entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class UsersUsescases {
  Future<Either<List<User>, Exception>> ejecutar();
}
