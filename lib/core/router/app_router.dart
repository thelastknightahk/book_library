import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/view/pages/login/login_page.dart';
import '../../presentation/splash/view/pages/splash_page.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const SplashPage();
    },
  ),
  GoRoute(
    path: '/login',
    builder: (BuildContext context, GoRouterState state) {
      return const LoginPage();
    },
  ),
]);
