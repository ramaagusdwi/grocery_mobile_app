import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_delivery_mobile_app/screens/category_screen.dart';
import 'package:grocery_delivery_mobile_app/screens/home_screen.dart';
import 'package:grocery_delivery_mobile_app/screens/main_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'category',
          builder: (BuildContext context, GoRouterState state) {
            return const CategoryScreen();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
      ],
    ),
  ],
);
