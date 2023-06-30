import 'dart:async';

import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/common/discover_service.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SwipeController
    extends AutoDisposeAsyncNotifier<List<AsyncValue<MovieDetails>>> {
  /// [index] starts at 1 here.
  void swipe(int index);
}

class SwipeControllerImpl extends SwipeController {
  late DefaultResponse responses;
  late StateController<String> currentMovieId;
  late DiscoverParams currentParams;
  int nonVideoResults = 0;

  @override
  void swipe(int index) async {
    final StateController<int> currentPage =
        ref.read(providers.pageProvider.notifier);
    currentMovieId.state = responses.results.first.id.toString();

    if (state is! AsyncData<List<AsyncValue<MovieDetails>>>) return;

    if (index >= responses.results.length - nonVideoResults) {
      currentPage.state++;
    }
  }

  @override
  FutureOr<List<AsyncValue<MovieDetails>>> build() async {
    currentParams = ref.watch(providers.discoverControllerProvider);

    responses = await ref.watch(discoverApiService(currentParams).future);
    currentMovieId = ref.read(providers.movieIdProvider.notifier);
    currentMovieId.state = responses.results.first.id.toString();

    return _loadNext();
  }

  List<AsyncValue<MovieDetails>> _loadNext() {
    final List<AsyncValue<MovieDetails>> res = responses.results
        .map((MovieResult movie) => ref.watch(movieDetailsApiService(
            MovieParams(
                movieID: movie.id,
                language: currentParams.language,
                appendToResponse: 'videos'))))
        .where((AsyncValue<MovieDetails> movie) =>
            movie is AsyncData<MovieDetails> &&
            movie.value.videos!.results!.isNotEmpty)
        .toList();
    nonVideoResults = responses.results.length - res.length;
    return res;
  }
}
