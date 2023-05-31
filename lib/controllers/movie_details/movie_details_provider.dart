import 'package:filmfinder/controllers/movie_details/movie_details_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProviderFamily<MovieDetailsController, int> movieDetailsProvider =
    StateProvider.autoDispose.family<MovieDetailsController, int>(
        (AutoDisposeStateProviderRef<MovieDetailsController> ref, int movieID) {
  return MovieDetailsControllerImpl(ref, movieID);
});
