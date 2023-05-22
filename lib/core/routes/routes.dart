import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itw_dashboard/features/assets/assets_screen.dart';
import 'package:itw_dashboard/features/tournaments/trournament_screen.dart';
import 'package:itw_dashboard/main.dart';

import '../../features/home/home_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final route = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,

  routes: [
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return MyHomePage(
            widgetBody: child,
          );
        },
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'home',
            path: '/',
            pageBuilder: (context, state) {
              return NoTransitionPage(child: HomeScreen());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'Assets',
            path: '/assets',
            pageBuilder: (context, state) {
              return NoTransitionPage(child: AssetScreen());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'Tournaments',
            path: '/tournments',
            pageBuilder: (context, state) {
              return NoTransitionPage(child: TournamentScreen());
            },
          ),
        ])
  ],
);
