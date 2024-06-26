import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/common/dio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<MovieDetails, MovieParams>
    movieDetailsApiService = FutureProvider.autoDispose.family(
  (AutoDisposeFutureProviderRef<MovieDetails> ref, MovieParams params) async {
    dynamic movieResponse = await ref.watch(dioProvider).get(
          'https://api.themoviedb.org/3/movie/$params',
        );
    ref.keepAlive();

    return MovieDetails.fromJson(movieResponse.data);
  },
);
