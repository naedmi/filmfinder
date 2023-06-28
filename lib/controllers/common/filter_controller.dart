import 'package:filmfinder/models/common/filter.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// Provider *****************************************************************
abstract class FilterProviderController
    extends StateNotifier<FilterProviderModel> {
  FilterProviderController(FilterProviderModel state) : super(state);

  void addProvider(int key, (String, String) value);

  void removeProvider(int key);
}

class FilterProviderControllerImpl extends FilterProviderController {
  FilterProviderControllerImpl({
    FilterProviderModel? model,
  }) : super(model ??
            FilterProviderModel(
                providers: FilmfinderPreferences.getProviders()));

  @override
  void addProvider(int key, (String, String) value) {
    FilmfinderPreferences.addProvider(key, value);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }

  @override
  void removeProvider(int key) {
    FilmfinderPreferences.removeProvider(key);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }
}

/// **************************************************************************

/// Genre ********************************************************************
abstract class FilterGenreController extends StateNotifier<FilterGenreModel> {
  FilterGenreController(FilterGenreModel state) : super(state);

  void addGenre(int key, String value);

  void removeGenre(int key);
}

class FilterGenreControllerImpl extends FilterGenreController {
  FilterGenreControllerImpl({
    FilterGenreModel? model,
    required FilterGenreModel genres,
  }) : super(model ??
            FilterGenreModel(genres: FilmfinderPreferences.getGenres()));

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
}

/// **************************************************************************
