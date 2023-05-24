import 'package:dio/dio.dart';
import 'package:filmfinder/view/common/constants.dart';
import 'package:filmfinder/view/common/navigation_widget.dart';
import 'package:filmfinder/view/landing_page.dart';
import 'package:filmfinder/view/list_page.dart';
import 'package:filmfinder/view/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

Future main() async {
  await dotenv.load();
  runApp(ProviderScope(observers: [Logger()], child: const MyApp()));
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

@riverpod
Dio dio(DioRef ref) {
  final key = dotenv.env['API_KEY'];
  Dio d = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $key',
      }));
  d.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90));
  return d;
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "${_truncate(newValue)}",
}''', wrapWidth: 90);
  }

  String _truncate(Object? value) {
    final str = value.toString();
    const maxLength = 400;
    return str.length > maxLength ? '${str.substring(0, maxLength)}...' : str;
  }
}
