import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/users_bloc.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuarios'),
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            success: (users) {
              return ListView.builder(
                itemCount: users!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${users[index].firstName} ${users[index].lastName}'),
                    subtitle: Text(users[index].email),
                    trailing: CircleAvatar(
                      child: Image.network(users[index].avatar),
                    ),
                    onTap: () {},
                  );
                },
              );
            },
            error: () => const Text('Error al cargar lista de Usuarios'),
          );
        },
      ),
    );
  }
}
