import 'package:filmfinder/view/common/constants.dart';
import 'package:filmfinder/view/common/navigation_widget.dart';
import 'package:filmfinder/view/landing_page.dart';
import 'package:filmfinder/view/list_page.dart';
import 'package:filmfinder/view/search_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  initialLocation: routeHome,
  routes: <RouteBase>[
    GoRoute(
        path: routeHome,
        pageBuilder: (context, state) {
          return customPageBuilder(const LandingPage(), context, state);
        }),
    GoRoute(
        path: routeList,
        pageBuilder: (context, state) {
          return customPageBuilder(const ListPage(), context, state);
        }),
    GoRoute(
        path: routeSwipe,
        pageBuilder: (context, state) {
          return customPageBuilder(const Placeholder(), context, state);
        }),
    GoRoute(
        path: routeSearch,
        pageBuilder: (context, state) {
          return customPageBuilder(const SearchPage(), context, state);
        }),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'filmfinder',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
