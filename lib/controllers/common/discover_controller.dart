import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class DiscoverController extends Notifier<DiscoverParams> {
  void refreshGenres();

  void refreshProviders();
}

class DiscoverControllerImpl extends DiscoverController {
  @override
  void refreshGenres() {
    state =
        state.copyWith(withGenres: FilmfinderPreferences.getGenreQueryString());
  }

  @override
  void refreshProviders() {
    state = state.copyWith(
        withWatchProviders: FilmfinderPreferences.getProviderQueryString());
  }

  @override
  DiscoverParams build() {
    String language =
        ref.watch(providers.settingsLanguageControllerProvider).language;
    final int currentPage = ref.watch(providers.pageProvider);

    return DiscoverParams(
        language: language,
        page: currentPage,
        // split('-')[1] is the region code - e.g. 'en-US' -> 'US'
        watchRegion: language.split('-')[1],
        withGenres: FilmfinderPreferences.getGenreQueryString(),
        withWatchProviders: FilmfinderPreferences.getProviderQueryString());
  }
}
