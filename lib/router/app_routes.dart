import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app.dart';
import '../features/favorite/presentation/view/favorite.page.dart';
import '../features/home/presentation/view/home_page.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final tabs = [
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/a',
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/b',
    icon: Icon(Icons.favorite),
    label: 'Favorite',
  ),
];

final router = GoRouter(
  initialLocation: '/a',
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(tabs: tabs, child: child);
      },
      routes: [
        // Products
        GoRoute(
          path: '/a',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
          ),
        ),
        // Shopping Cart
        GoRoute(
          path: '/b',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const FavoritePage(),
          ),
        ),
      ],
    ),
  ],
);
