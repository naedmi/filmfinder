import 'package:filmfinder/models/watch_provider/movie_provider_params.dart';
import 'package:filmfinder/models/watch_provider/movie_provider_response.dart';
import 'package:filmfinder/services/common/dio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<MovieProviderResponse,
        MovieProviderParams> watchProviderApiService =
    FutureProvider.autoDispose.family(watchProviderApiServiceImpl);

Future<MovieProviderResponse> watchProviderApiServiceImpl(
    AutoDisposeFutureProviderRef<MovieProviderResponse> ref,
    MovieProviderParams params) async {
  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/watch/providers/movie$params',
      );
  ref.keepAlive();

  return MovieProviderResponse.fromJson(response.data);
}
