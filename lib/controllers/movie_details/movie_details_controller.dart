import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [MovieDetailsController] is used to fetch the details of a movie.
///
/// This could be a StateProvider, but for possible future additions
/// a NotifierProvider is used - better maintainability
abstract class MovieDetailsController
    extends AutoDisposeFamilyNotifier<AsyncValue<MovieDetails>, int> {}

class MovieDetailsControllerImpl extends MovieDetailsController {
  @override
  AsyncValue<MovieDetails> build(int arg) {
    final String language =
        ref.watch(providers.settingsLanguageControllerProvider).language;
    final AsyncValue<MovieDetails> movieDetails = ref.watch(
        movieDetailsApiService(MovieParams(
            movieID: arg,
            language: language,
            appendToResponse: 'watch/providers,credits')));
    return movieDetails;
  }
}
