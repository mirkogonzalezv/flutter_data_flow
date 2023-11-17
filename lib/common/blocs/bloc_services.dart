import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_users/features/users/presentation/bloc/users_bloc.dart';

List<BlocProvider> blocServices() {
  return [
    BlocProvider<UsersBloc>(
      create: (context) => UsersBloc(),
    ),
  ];
}
