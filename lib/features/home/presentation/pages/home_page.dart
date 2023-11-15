import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
