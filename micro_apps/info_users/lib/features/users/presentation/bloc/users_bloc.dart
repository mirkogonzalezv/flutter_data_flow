import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/usecases/users_usescase_impl.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/users_usecases.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersUsescases _usersUsescases = UsersUsescasesImpl();
  UsersBloc() : super(const _Initial()) {
    on<LoadUsersData>(_loadUsersData);
  }

  _loadUsersData(LoadUsersData event, Emitter<UsersState> emit) async {
    emit(const UsersState.loading());

    final resultado = await _usersUsescases.ejecutar();

    resultado.fold(
      (data) {
        emit(UsersState.success(users: data));
      },
      (err) {
        emit(const UsersState.error());
      },
    );
  }
}
