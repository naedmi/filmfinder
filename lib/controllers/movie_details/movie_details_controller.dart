import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class MovieDetailsController
    extends AutoDisposeFamilyNotifier<AsyncValue<MovieDetails>, int> {
  late int movieID;
}

class MovieDetailsControllerImpl extends MovieDetailsController {
  @override
  AsyncValue<MovieDetails> build(int arg) {
    movieID = arg;
    final AsyncValue<MovieDetails> movieDetails = ref.watch(
        movieDetailsApiService(MovieParams(
            movieID: movieID,
            language: FilmfinderPreferences.getLanguage(),
            appendToResponse: 'watch/providers,credits')));
    return movieDetails;
  }
}
