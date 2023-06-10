import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class MovieDetailsController {
  MovieDetailsController(this.ref);

  late AsyncValue<MovieDetails> movieDetails;
  final AutoDisposeStateProviderRef<MovieDetailsController> ref;
  late int movieID;
}

class MovieDetailsControllerImpl extends MovieDetailsController {
  MovieDetailsControllerImpl(
      AutoDisposeStateProviderRef<MovieDetailsController> ref, int movieID)
      : super(ref) {
    this.movieID = movieID;
    movieDetails =
        ref.watch(movieDetailsApiService(MovieParams(movieID: movieID)));
  }
}
