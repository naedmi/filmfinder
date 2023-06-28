import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/views/common/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// Genre ********************************************************************
abstract class DiscoverController extends StateNotifier<DiscoverParams> {
  DiscoverController(DiscoverParams state) : super(state);

  Future<void> refreshGenres();

  Future<void> refreshProviders();
}

class DiscoverControllerImpl extends DiscoverController {
  DiscoverControllerImpl({
    DiscoverParams? model,
    required DiscoverParams discoverParams,
  }) : super(model ?? const DiscoverParams());

  @override
  Future<void> refreshGenres() async {
    state =
        state.copyWith(withGenres: FilmfinderPreferences.getGenreQueryString());
  }

  @override
  Future<void> refreshProviders() async {
    state = state.copyWith(
        withWatchProviders: FilmfinderPreferences.getProviderQueryString());
  }
}

/// **************************************************************************
