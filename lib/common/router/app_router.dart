import 'package:flutter_data_flow/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:info_users/main.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/users',
      name: 'users',
      builder: (context, state) => const InfoUsersListPage(),
    ),
  ],
);
