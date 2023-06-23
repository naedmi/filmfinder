import 'package:filmfinder/models/common/filter.dart';
import 'package:filmfinder/views/settings/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// DarkMode *****************************************************************
abstract class FilterProviderController
    extends StateNotifier<FilterProviderModel> {
  FilterProviderController(FilterProviderModel state) : super(state);

  void setProvider(Map<String, String> providers);

  void addProvider(String key, String value);

  void removeProvider(String key);
}

class FilterProviderControllerImpl extends FilterProviderController {
  FilterProviderControllerImpl({
    FilterProviderModel? model,
  }) : super(model ??
            FilterProviderModel(
                providers: FilmfinderPreferences.getProviders()));

  @override
  void setProvider(Map<String, String> providers) {
    FilmfinderPreferences.setProviders(providers);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }

  @override
  void addProvider(String key, String value) {
    Map<String, String> providers = FilmfinderPreferences.getProviders();
    providers[key] = value;
    FilmfinderPreferences.setProviders(providers);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }

  @override
  void removeProvider(String key) {
    Map<String, String> providers = FilmfinderPreferences.getProviders();
    providers.remove(key);
    FilmfinderPreferences.setProviders(providers);
    state = state.copyWith(providers: FilmfinderPreferences.getProviders());
  }
}

/// **************************************************************************
