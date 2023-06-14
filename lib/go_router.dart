import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/landing/landing_page.dart';
import 'package:filmfinder/views/list/list_page.dart';
import 'package:filmfinder/views/movie_details/movie_detail_page.dart';
import 'package:filmfinder/views/search/search_page.dart';
import 'package:filmfinder/views/settings/settings_page.dart';
import 'package:filmfinder/views/swipe/swipe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter goRouter = GoRouter(
  observers: <NavigatorObserver>[GoRouterObserver()],
  initialLocation: routeHome,
  routes: <RouteBase>[
    GoRoute(
        path: routeHome,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customPageBuilder(LandingPage(), context, state);
        }),
    GoRoute(
        path: routeList,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customPageBuilder(const ListPage(), context, state);
        }),
    GoRoute(
        path: routeSwipe,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customPageBuilder(const SwipePage(), context, state);
        }),
    GoRoute(
        path: routeSearch,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customPageBuilder(SearchPage(), context, state);
        }),
    GoRoute(
        path: routeSettings,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customPageBuilder(const SettingsPage(), context, state);
        }),
    GoRoute(
        path: '$routeDetails/:id',
        name: 'details',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customPageBuilder(
              MovieDetailsPage(
                movieId: state.pathParameters['id']!,
              ),
              context,
              state);
        }),
  ],
);

// Keeps the app in portrait mode after exiting video player
class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (MediaQuery.of(route.navigator!.context).orientation ==
        Orientation.landscape) {
      SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (MediaQuery.of(route.navigator!.context).orientation ==
        Orientation.landscape) {
      SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }
}
