import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/go_router.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/services/logger_provider_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await FilmfinderPreferences.init();
  await dotenv.load();
  initHive();
  await EasyLocalization.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales.values.toList(),
      path: langPath,
      child: ProviderScope(
        observers: <ProviderObserver>[LoggerService()],
        child: const MyApp(),
      ),
    ),
  );
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

void initHive() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(MovieAdapter());
  }
  await Hive.openBox<MovieResult>('fav_movies');
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingsDarkModeModel darkModeModel =
        ref.watch(providers.settingsControllerProvider);
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); // Force portrait mode
    return MaterialApp.router(
      // Language settings
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      routerConfig: goRouter,
      title: 'filmfinder',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: darkModeModel.darkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
