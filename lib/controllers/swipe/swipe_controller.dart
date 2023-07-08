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
    extends AutoDisposeAsyncNotifier<List<MovieDetails>> {
  /// [index] starts at 1 here.
  void swipe(int index);
}

class SwipeControllerImpl extends SwipeController {
  late DefaultResponse responses;
  late StateController<String> currentMovieId;
  int nonVideoResults = 0;

  @override
  void swipe(int index) async {
    final int actualLength = responses.results.length - nonVideoResults;
    if (index < actualLength) {
      currentMovieId.state = responses.results.elementAt(index).id.toString();
    }
    if (index >= actualLength) {
      ref.read(providers.pageProvider.notifier).state++;
    }
  }

  @override
  FutureOr<List<MovieDetails>> build() async {
    final DiscoverParams currentParams =
        ref.watch(providers.discoverControllerProvider);

    responses = await ref.watch(discoverApiService(currentParams).future);
    currentMovieId = ref.read(providers.movieIdProvider.notifier);
    currentMovieId.state = responses.results.first.id.toString();

    return _loadNext(currentParams);
  }

  Future<List<MovieDetails>> _loadNext(DiscoverParams currentParams) async {
    final Iterable<Future<MovieDetails>> fetchDetails =
        responses.results.map((MovieResult movie) async {
      return await ref.watch(movieDetailsApiService(MovieParams(
              movieID: movie.id,
              language: currentParams.language,
              appendToResponse: 'videos'))
          .future);
    });
    final List<MovieDetails> finalDetails = (await Future.wait(fetchDetails))
        .map((MovieDetails details) => details.copyWith(
            videos: details.videos!.copyWith(
                results: details.videos!.results!
                    .where((VideoResult video) =>
                        video.type == 'Trailer' && video.site == 'YouTube')
                    .toList())))
        .where((MovieDetails details) => details.videos!.results!.isNotEmpty)
        .toList();
    nonVideoResults = responses.results.length - finalDetails.length;
    return finalDetails;
  }
}
