import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/movie_details/movie_details.dart';
import '../dio_provider.dart';

final AutoDisposeFutureProviderFamily<MovieDetails, int>
    movieDetailsApiService = FutureProvider.autoDispose.family(
        (AutoDisposeFutureProviderRef<MovieDetails> ref, int movieId) async {
  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/movie/$movieId',
      );
  ref.keepAlive();

  return MovieDetails.fromJson(response.data);
});
