import 'package:dio/dio.dart';
import 'package:filmfinder/controllers/common/discover_controller.dart';
import 'package:filmfinder/controllers/common/filter_controller.dart';
import 'package:filmfinder/controllers/landing/landing_controller.dart';
import 'package:filmfinder/controllers/list/list_controller.dart';
import 'package:filmfinder/controllers/movie_details/movie_details_controller.dart';
import 'package:filmfinder/controllers/search/search_controller.dart';
import 'package:filmfinder/controllers/settings/settings_controller.dart';
import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/models/common/filter.dart';
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

  final AutoDisposeNotifierProvider<SearchController,
          AsyncValue<DefaultResponse>> searchControllerProvider =
      NotifierProvider.autoDispose<SearchController,
          AsyncValue<DefaultResponse>>(() => SearchControllerImpl());

  final StateProvider<SearchFilter> searchFilterProvider =
      StateProvider<SearchFilter>((StateProviderRef<SearchFilter> ref) {
    return SearchFilter(
        language: ref.watch(providers.settingsLanguageProvider).language);
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

  /// FilterProvider ***********************************************************

  final Provider<FilterProviderModel> filterProviderProvider =
      Provider<FilterProviderModel>((ProviderRef<FilterProviderModel> ref) {
    final Map<String, (int, String)> providers =
        FilmfinderPreferences.getProviders();
    return FilterProviderModel(providers: providers);
  });

  final StateNotifierProvider<FilterProviderController, FilterProviderModel>
      filterProviderControllerProvider =
      StateNotifierProvider<FilterProviderController, FilterProviderModel>(
          (StateNotifierProviderRef<FilterProviderController,
                  FilterProviderModel>
              ref) {
    final FilterProviderModel filterProviderModel = FilterProviderModel(
      providers: FilmfinderPreferences.getProviders(),
    );
    return FilterProviderControllerImpl(model: filterProviderModel);
  });

  /// **************************************************************************

  /// FilterGenre **************************************************************

  final Provider<FilterGenreModel> filterGenreProvider =
      Provider<FilterGenreModel>((ProviderRef<FilterGenreModel> ref) {
    final Map<int, String> genres = FilmfinderPreferences.getGenres();
    return FilterGenreModel(genres: genres);
  });

  final StateNotifierProvider<FilterGenreController, FilterGenreModel>
      filterGenreControllerProvider =
      StateNotifierProvider<FilterGenreController, FilterGenreModel>(
          (StateNotifierProviderRef<FilterGenreController, FilterGenreModel>
              ref) {
    final FilterGenreModel filterGenreModel = FilterGenreModel(
      genres: FilmfinderPreferences.getGenres(),
    );
    return FilterGenreControllerImpl(genres: filterGenreModel);
  });

  /// **************************************************************************

  /// Discover *****************************************************************

  final Provider<DiscoverParams> discoverProvider =
      Provider<DiscoverParams>((ProviderRef<DiscoverParams> ref) {
    return DiscoverParams(
        withGenres: FilmfinderPreferences.getGenreQueryString(),
        withWatchProviders: FilmfinderPreferences.getProviderQueryString());
  });

  final StateNotifierProvider<DiscoverController, DiscoverParams>
      discoverControllerProvider =
      StateNotifierProvider<DiscoverController, DiscoverParams>(
          (StateNotifierProviderRef<DiscoverController, DiscoverParams> ref) {
    final DiscoverParams discoverParams = DiscoverParams(
      withGenres: FilmfinderPreferences.getGenreQueryString(),
      withWatchProviders: FilmfinderPreferences.getProviderQueryString(),
    );
    return DiscoverControllerImpl(discoverParams: discoverParams);
  });

  /// **************************************************************************
}
