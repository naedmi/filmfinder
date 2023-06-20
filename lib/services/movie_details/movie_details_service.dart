import 'package:dio/dio.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/models/movie_details/tv_details.dart';
import 'package:filmfinder/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<MovieDetails, MovieParams>
    movieDetailsApiService =
    FutureProvider.autoDispose.family(movieDetailsApiImpl);

Future<MovieDetails> movieDetailsApiImpl(
    AutoDisposeFutureProviderRef<MovieDetails> ref, MovieParams params) async {
  bool hadError = false;
  Response<dynamic> movieResponse = await ref
      .watch(providers.dioProvider)
      .get(
        'https://api.themoviedb.org/3/movie/$params',
      )
      .onError((Object? error, StackTrace stackTrace) {
    hadError = true;
    return ref.watch(providers.dioProvider).get(
          'https://api.themoviedb.org/3/tv/$params',
        );
  });
  ref.keepAlive();

  if (hadError) {
    return TvDetails.fromJson(movieResponse.data).toMovieDetails();
  }

  return MovieDetails.fromJson(movieResponse.data);
}
