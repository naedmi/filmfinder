import 'package:filmfinder/models/common/filter.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// Provider *****************************************************************
abstract class FilterProviderController
    extends StateNotifier<FilterProviderModel> {
  FilterProviderController(FilterProviderModel state) : super(state);

  Future<void> setProvider(Map<String, (int, String)> providers);

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
  Future<void> setProvider(Map<String, (int, String)> providers) async {
    await FilmfinderPreferences.setProviders(providers);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }

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
