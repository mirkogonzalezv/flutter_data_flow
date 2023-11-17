import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:info_users/features/users/presentation/bloc/users_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista Home'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Vista Home'),
            ElevatedButton(
              onPressed: () async {
                BlocProvider.of<UsersBloc>(context).add(const UsersEvent.loadData());
                context.push('/users');
              },
              child: const Text('Ir a lista de usuarios'),
            ),
          ],
        ),
      ),
    );
  }
}
