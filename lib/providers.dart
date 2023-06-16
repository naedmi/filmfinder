import 'package:dio/dio.dart';
import 'package:filmfinder/controllers/landing/landing_controller.dart';
import 'package:filmfinder/controllers/list/list_controller.dart';
import 'package:filmfinder/controllers/movie_details/movie_details_controller.dart';
import 'package:filmfinder/controllers/search/search_controller.dart';
import 'package:filmfinder/controllers/settings/settings_controller.dart';
import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/list/movie_list.dart';
import 'package:filmfinder/models/search/search_filter.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/services/list/local_persistence_service.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final Providers providers = Providers();

class Providers {
  final Provider<Dio> dioProvider = Provider<Dio>((ProviderRef<Dio> ref) {
    final String? key = dotenv.env['API_KEY'];

    Dio d = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: <String, String>{
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
  });

  final AutoDisposeStateProvider<SearchController> searchControllerProvider =
      StateProvider.autoDispose<SearchController>(
          (AutoDisposeStateProviderRef<SearchController> ref) {
    return SearchControllerImpl(ref);
  });

  final StateProvider<SearchFilter> searchFilterProvider =
      StateProvider<SearchFilter>((Ref ref) {
    return SearchFilter(language: FilmfinderPreferences.getLanguage());
  });

  final AutoDisposeStateProviderFamily<MovieDetailsController, int>
      movieDetailsProvider = StateProvider.autoDispose
          .family<MovieDetailsController, int>(
              (AutoDisposeStateProviderRef<MovieDetailsController> ref,
                  int movieID) {
    return MovieDetailsControllerImpl(ref, movieID);
  });

  final Provider<LocalPersistenceService> localPersistenceProvider =
      Provider<LocalPersistenceService>(
          (ProviderRef<LocalPersistenceService> _) =>
              LocalPersistenceServiceHive());

  final AutoDisposeStateProvider<ListController> listControllerProvider =
      StateProvider.autoDispose<ListController>(
          (AutoDisposeStateProviderRef<ListController> ref) {
    return ListControllerImpl(ref);
  });

  final StateProvider<MovieList> movieListProvider =
      StateProvider<MovieList>((Ref ref) {
    return const MovieList();
  });

  final AutoDisposeStateProvider<LandingController> landingControllerProvider =
      StateProvider.autoDispose<LandingController>(
          (AutoDisposeStateProviderRef<LandingController> ref) {
    return LandingControllerImpl(ref);
  });

  /// **************************************************************************

  /// DarkMode *****************************************************************

  final Provider<SettingsDarkModeModel> settingsDarkProvider =
      Provider<SettingsDarkModeModel>((ProviderRef<SettingsDarkModeModel> ref) {
    final bool darkMode = FilmfinderPreferences.getDarkMode();
    return SettingsDarkModeModel(darkMode: darkMode);
  });

  final StateNotifierProvider<SettingsDarkModeController, SettingsDarkModeModel>
      settingsControllerProvider =
      StateNotifierProvider<SettingsDarkModeController, SettingsDarkModeModel>(
          (StateNotifierProviderRef<SettingsDarkModeController,
                  SettingsDarkModeModel>
              ref) {
    final SettingsDarkModeModel settingsModel =
        SettingsDarkModeModel(darkMode: FilmfinderPreferences.getDarkMode());
    return SettingsDarkModeControllerImpl(model: settingsModel);
  });

  /// **************************************************************************

  /// Language *****************************************************************

  final Provider<SettingsLanguageModel> settingsLanguageProvider =
      Provider<SettingsLanguageModel>((ProviderRef<SettingsLanguageModel> ref) {
    final String language = FilmfinderPreferences.getLanguage();
    return SettingsLanguageModel(language: language);
  });

  final StateNotifierProvider<SettingsLanguageController, SettingsLanguageModel>
      settingsLanguageControllerProvider =
      StateNotifierProvider<SettingsLanguageController, SettingsLanguageModel>(
          (StateNotifierProviderRef<SettingsLanguageController,
                  SettingsLanguageModel>
              ref) {
    final SettingsLanguageModel settingsModel =
        SettingsLanguageModel(language: FilmfinderPreferences.getLanguage());
    return SettingsLanguageControllerImpl(model: settingsModel);
  });

  /// **************************************************************************
}
