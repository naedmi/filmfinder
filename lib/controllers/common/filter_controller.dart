import 'package:filmfinder/models/common/filter.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// Provider *****************************************************************
abstract class FilterProviderController
    extends StateNotifier<FilterProviderModel> {
  FilterProviderController(FilterProviderModel state) : super(state);

  Future<void> addProvider(String key, (int, String) value);

  Future<void> removeProvider(String key);
}

class FilterProviderControllerImpl extends FilterProviderController {
  FilterProviderControllerImpl({
    FilterProviderModel? model,
  }) : super(model ??
            FilterProviderModel(
                providers: FilmfinderPreferences.getProviders()));

  @override
  Future<void> addProvider(String key, (int, String) value) async {
    await FilmfinderPreferences.addProvider(key, value);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }

  @override
  Future<void> removeProvider(String key) async {
    await FilmfinderPreferences.removeProvider(key);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }
}

/// **************************************************************************

/// Genre ********************************************************************
abstract class FilterGenreController extends StateNotifier<FilterGenreModel> {
  FilterGenreController(FilterGenreModel state) : super(state);

  Future<void> addGenre(int key, String value);

  Future<void> removeGenre(int key);
}

class FilterGenreControllerImpl extends FilterGenreController {
  FilterGenreControllerImpl({
    FilterGenreModel? model,
    required FilterGenreModel genres,
  }) : super(model ?? FilterGenreModel(genres: <int, String>{}));

  @override
  Future<void> addGenre(int key, String value) async {
    await FilmfinderPreferences.addGenre(key, value);
    state = state.copyWith(genres: FilmfinderPreferences.getGenres());
  }

  @override
  Future<void> removeGenre(int key) async {
    await FilmfinderPreferences.removeGenre(key);
    state = state.copyWith(genres: FilmfinderPreferences.getGenres());
  }
}

/// **************************************************************************
