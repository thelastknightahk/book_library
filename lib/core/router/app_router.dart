import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_book/presentation/auth/view/pages/signup/signup_page.dart';
import 'package:mvvm_book/presentation/main/view/main_page.dart';
import 'package:mvvm_book/presentation/search/view/pages/search_list_page.dart';

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
    path: '/loginPage',
    builder: (BuildContext context, GoRouterState state) {
      return LoginPage();
    },
  ),
  GoRoute(
    path: '/signUpPage',
    builder: (BuildContext context, GoRouterState state) {
      return SignUpPage();
    },
  ),
  GoRoute(
    path: '/mainPage',
    builder: (BuildContext context, GoRouterState state) {
      return const MainBodyPage();
    },
  ),
  GoRoute(
    path: '/searchListPage',
    builder: (BuildContext context, GoRouterState state) {
      return const SearchListPage();
    },
  ),
]);
