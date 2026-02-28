import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/router_pages.dart';
import 'package:alma/ui/menu/main_menu_screen.dart';
import 'package:alma/ui/menu/save_slots_screen.dart';
import 'package:alma/ui/menu/create_soul_screen.dart';
import 'package:alma/ui/menu/achievements_screen.dart';
import 'package:alma/ui/soul/soul_home_screen.dart';
import 'package:alma/ui/soul/life_selection_screen.dart';
import 'package:alma/ui/soul/soul_subjects_screen.dart';
import 'package:alma/ui/soul/nirvana_screen.dart';
import 'package:alma/ui/soul/game_over_screen.dart';
import 'package:alma/ui/life/life_dashboard_screen.dart';
import 'package:alma/ui/life/relationships_screen.dart';
import 'package:alma/ui/life/life_summary_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return MaterialPage<void>(
          key: state.pageKey,
          child: const MainMenuScreen(),
        );
      },
    ),
    GoRoute(
      path: '/create-soul',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSwipeBack(state, const CreateSoulScreen());
      },
    ),
    GoRoute(
      path: '/save-slots',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSwipeBack(state, const SaveSlotsScreen());
      },
    ),
    GoRoute(
      path: '/achievements',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSwipeBack(state, const AchievementsScreen());
      },
    ),
    GoRoute(
      path: '/soul',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSwipeBack(state, const SoulHomeScreen());
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'choose-life',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithSwipeBack(state, const LifeSelectionScreen());
          },
        ),
        GoRoute(
          path: 'subjects',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithSwipeBack(state, const SoulSubjectsScreen());
          },
        ),
        GoRoute(
          path: 'nirvana',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithSwipeBack(state, const NirvanaScreen());
          },
        ),
        GoRoute(
          path: 'game-over',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithSwipeBack(state, const GameOverScreen());
          },
        ),
      ],
    ),
    GoRoute(
      path: '/life',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSwipeBack(state, const LifeDashboardScreen());
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'relationships',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithSwipeBack(state, const RelationshipsScreen());
          },
        ),
        GoRoute(
          path: 'summary',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithSwipeBack(state, const LifeSummaryScreen());
          },
        ),
      ],
    ),
  ],
);
