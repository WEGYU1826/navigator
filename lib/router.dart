// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator/home.dart';
import 'package:navigator/login.dart';
import 'package:navigator/route_constant.dart';
import 'package:navigator/user_product.dart';
import 'package:navigator/user_profile.dart';
import 'package:navigator/user_screen.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstant.home,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstant.login,
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstant.user,
        path: '/user',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: UserScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstant.userProfile,
        path: '/user/profile/:id',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: UserProfileScreen(
              id: state.params['id']!,
            ),
          );
        },
      ),
      GoRoute(
        name: RouteConstant.userProduct,
        path: '/user/product/:id',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: UserProductScreen(
              productDetail: state.queryParams,
            ),
          );
        },
      ),
    ],
    redirect: (context, state) {
      bool isAuth = true;
      if (!isAuth && state.subloc == '/') {
        return state.namedLocation(RouteConstant.login);
      }
      return null;
    },
  );
}
