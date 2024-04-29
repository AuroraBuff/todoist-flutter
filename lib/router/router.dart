import 'package:go_router/go_router.dart';
import 'package:todoist/pages/home/home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const Home(),
      // routes: [
      //   GoRoute(
      //     path: 'details',
      //     builder: (_, __) => Scaffold(
      //       appBar: AppBar(title: const Text('Details Screen')),
      //     ),
      //   ),
      // ],
    ),
  ],
);
