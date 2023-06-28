import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// Genre ********************************************************************
abstract class DiscoverController extends StateNotifier<DiscoverParams> {
  DiscoverController(DiscoverParams state) : super(state);

  void refreshGenres();

  void refreshProviders();
}

class DiscoverControllerImpl extends DiscoverController {
  DiscoverControllerImpl({
    DiscoverParams? model,
    required DiscoverParams discoverParams,
  }) : super(model ?? const DiscoverParams());

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
}

/// **************************************************************************