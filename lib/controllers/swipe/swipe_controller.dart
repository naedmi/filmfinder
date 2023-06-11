import 'package:filmfinder/controllers/settings/settings_provider.dart';
import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/common/discover_service.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SwipeController {
  SwipeController(this.ref);

  late AsyncValue<List<AsyncValue<MovieDetails>>> currentMovies;

  final AutoDisposeStateProviderRef<SwipeController> ref;
}

class SwipeControllerImpl extends SwipeController {
  SwipeControllerImpl(AutoDisposeStateProviderRef<SwipeController> ref)
      : super(ref) {
    final String language = ref.watch(settingsLanguageProvider).language;
    final AsyncValue<DefaultResponse> responses =
        ref.watch(discoverApiService(DiscoverParams(language: language)));
    currentMovies = responses.whenData((DefaultResponse response) => response
        .results
        .map((MovieResult movie) => ref.watch(movieDetailsApiService(
            MovieParams(
                movieID: movie.id,
                language: language,
                appendToResponse: 'videos'))))
        .whereAsync((AsyncValue<MovieDetails> element) => element.whenData(
            (MovieDetails movie) => movie.videos!.results!.isNotEmpty))
        .toList());
  }
}

extension IterableExtension<E> on Iterable<E> {
  Iterable<E> whereAsync(AsyncValue<bool> Function(E element) selector) {
    final List<E> result = <E>[];
    forEach((E x) {
      selector(x).whenData((bool value) {
        if (value) {
          result.add(x);
        }
      });
    });
    return result;
  }
}
