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
import 'package:filmfinder/models/landing/landing_category.dart';
import 'package:filmfinder/models/list/movie_list.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/search/search_filter.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Providers providers = Providers();

class Providers {
  final AutoDisposeNotifierProvider<SearchController,
          AsyncValue<DefaultResponse>> searchControllerProvider =
      NotifierProvider.autoDispose<SearchController,
          AsyncValue<DefaultResponse>>(() => SearchControllerImpl());

  final StateProvider<SearchFilter> searchFilterProvider =
      StateProvider<SearchFilter>((StateProviderRef<SearchFilter> ref) {
    return SearchFilter(
        language:
            ref.watch(providers.settingsLanguageControllerProvider).language);
  });

  /// **************************************************************************

  /// Details ******************************************************************

  final AutoDisposeNotifierProviderFamily<MovieDetailsController,
          AsyncValue<MovieDetails>, int> movieDetailsProvider =
      AutoDisposeNotifierProviderFamily<MovieDetailsController,
          AsyncValue<MovieDetails>, int>(() => MovieDetailsControllerImpl());

  /// **************************************************************************

  /// List *********************************************************************

  final AutoDisposeNotifierProvider<ListController, MovieList>
      listControllerProvider =
      AutoDisposeNotifierProvider<ListController, MovieList>(
          () => ListControllerImpl());

  final StateProvider<MovieList> movieListProvider =
      StateProvider<MovieList>((Ref ref) {
    return const MovieList();
  });

  /// **************************************************************************

  /// Landing ******************************************************************

  final AutoDisposeNotifierProvider<LandingController,
          List<Future<LandingCategory>>> landingControllerProvider =
      AutoDisposeNotifierProvider<LandingController,
          List<Future<LandingCategory>>>(() => LandingControllerImpl());

  /// **************************************************************************

  /// DarkMode *****************************************************************

  final NotifierProvider<SettingsDarkModeController, SettingsDarkModeModel>
      settingsControllerProvider =
      NotifierProvider<SettingsDarkModeController, SettingsDarkModeModel>(
          () => SettingsDarkModeControllerImpl());

  /// **************************************************************************

  /// Language *****************************************************************

  final NotifierProvider<SettingsLanguageController, SettingsLanguageModel>
      settingsLanguageControllerProvider =
      NotifierProvider<SettingsLanguageController, SettingsLanguageModel>(
          () => SettingsLanguageControllerImpl());

  /// **************************************************************************

  /// FilterProvider ***********************************************************

  final NotifierProvider<FilterProviderController, FilterProviderModel>
      filterProviderControllerProvider =
      NotifierProvider<FilterProviderController, FilterProviderModel>(
          () => FilterProviderControllerImpl());

  /// **************************************************************************

  /// FilterGenre **************************************************************

  final NotifierProvider<FilterGenreController, FilterGenreModel>
      filterGenreControllerProvider =
      NotifierProvider<FilterGenreController, FilterGenreModel>(
          () => FilterGenreControllerImpl());

  /// **************************************************************************

  /// Discover *****************************************************************

  final NotifierProvider<DiscoverController, DiscoverParams>
      discoverControllerProvider =
      NotifierProvider<DiscoverController, DiscoverParams>(
          () => DiscoverControllerImpl());

  /// **************************************************************************
}
