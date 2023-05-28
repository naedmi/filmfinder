import 'package:filmfinder/services/logger_provider_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/landing_page.dart';
import 'package:filmfinder/views/list_page.dart';
import 'package:filmfinder/views/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future main() async {
  await dotenv.load();
  runApp(ProviderScope(observers: [LoggerService()], child: const MyApp()));
}

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
          return customPageBuilder(SearchPage(), context, state);
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
