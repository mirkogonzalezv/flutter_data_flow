part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loading() = LoadingState;
  const factory UsersState.success({List<User>? users}) = SuccessState;
  const factory UsersState.error() = ErrorState;
}
