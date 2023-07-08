import 'package:filmfinder/models/common/filter.dart';
import 'package:filmfinder/models/watch_provider/movie_provider_response.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider *****************************************************************
abstract class FilterProviderController extends Notifier<FilterProviderModel> {
  void addProvider(int key, (String, String) value);

  void removeProvider(int key);

  void clearProviders();

  void selectAllProviders(List<MovieWatchProvider> movieProviderList);

  void setLanguage(String value);
}

class FilterProviderControllerImpl extends FilterProviderController {
  @override
  void addProvider(int key, (String, String) value) {
    FilmfinderPreferences.addProvider(key, value);
    state = state.copyWith(
        providers: FilmfinderPreferences.getProviders(),
        language: FilmfinderPreferences.getProvidersLanguage());
  }

  @override
  void removeProvider(int key) {
    FilmfinderPreferences.removeProvider(key);
    state = state.copyWith(
        providers: FilmfinderPreferences.getProviders(),
        language: FilmfinderPreferences.getProvidersLanguage());
  }

  @override
  void clearProviders() {
    FilmfinderPreferences.clearProviders();
    state = state.copyWith(
        providers: FilmfinderPreferences.getProviders(),
        language: FilmfinderPreferences.getProvidersLanguage());
  }

  @override
  void selectAllProviders(List<MovieWatchProvider> movieProviderList) {
    Map<int, (String, String)> tmpProviders = <int, (String, String)>{};
    for (MovieWatchProvider provider in movieProviderList) {
      tmpProviders[provider.providerId] =
          (provider.providerName, provider.logoPath);
    }
    FilmfinderPreferences.setProviders(tmpProviders);
    state = state.copyWith(
        providers: FilmfinderPreferences.getProviders(),
        language: FilmfinderPreferences.getProvidersLanguage());
  }

  @override
  void setLanguage(String value) {
    FilmfinderPreferences.setProvidersLanguage(value);
    clearProviders();
    state = state.copyWith(
        providers: FilmfinderPreferences.getProviders(),
        language: FilmfinderPreferences.getProvidersLanguage());
  }

  @override
  FilterProviderModel build() {
    return FilterProviderModel(
        providers: FilmfinderPreferences.getProviders(),
        language: FilmfinderPreferences.getProvidersLanguage());
  }
}

/// **************************************************************************

/// Genre ********************************************************************
abstract class FilterGenreController extends Notifier<FilterGenreModel> {
  void addGenre(int key, String value);

  void removeGenre(int key);

  void clearGenres();

  void selectAllGenres();
}

class FilterGenreControllerImpl extends FilterGenreController {
  @override
  void addGenre(int key, String value) {
    FilmfinderPreferences.addGenre(key, value);
    state = state.copyWith(genres: FilmfinderPreferences.getGenres());
  }

  @override
  void removeGenre(int key) {
    FilmfinderPreferences.removeGenre(key);
    state = state.copyWith(genres: FilmfinderPreferences.getGenres());
  }

  @override
  void clearGenres() {
    FilmfinderPreferences.clearGenres();
    state = state.copyWith(genres: FilmfinderPreferences.getGenres());
  }

  @override
  void selectAllGenres() {
    Map<int, String> genreList = <int, String>{};
    for (int key in genreMap.keys) {
      genreList[key] = genreMap[key]!.$1;
    }
    FilmfinderPreferences.setGenres(genreList);
    state = state.copyWith(genres: FilmfinderPreferences.getGenres());
  }

  @override
  FilterGenreModel build() {
    return FilterGenreModel(genres: FilmfinderPreferences.getGenres());
  }
}

/// **************************************************************************
