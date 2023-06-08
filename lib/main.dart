import 'package:filmfinder/services/logger_provider_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/landing/landing_page.dart';
import 'package:filmfinder/views/list/list_page.dart';
import 'package:filmfinder/views/movie_details/movie_detail_page.dart';
import 'package:filmfinder/views/search/search_page.dart';
import 'package:filmfinder/views/settings/settings_page.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:filmfinder/views/swipe/swipe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FilmfinderPreferences.init();
  await dotenv.load();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ProviderScope(
      observers: <ProviderObserver>[LoggerService()], child: const MyApp()));
}

/// The route configuration.
final GoRouter _router = GoRouter(
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); // Force portrait mode
    return MaterialApp.router(
      routerConfig: _router,
      title: 'filmfinder',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: FilmfinderPreferences.getDarkMode()
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
