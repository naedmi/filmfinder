import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/settings/settings_provider.dart';
import 'package:filmfinder/go_router.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/services/logger_provider_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FilmfinderPreferences.init();
  await dotenv.load();
  await EasyLocalization.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    EasyLocalization(
      supportedLocales: supportedLanguages.values.toList(),
      path: langPath,
      child: ProviderScope(
        observers: <ProviderObserver>[LoggerService()],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingsDarkModeModel darkModeModel =
        ref.watch(settingsControllerProvider);
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
