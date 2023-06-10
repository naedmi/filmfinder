import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/services/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<DefaultResponse, DiscoverParams>
    discoverApiService = FutureProvider.autoDispose.family(
        (AutoDisposeFutureProviderRef<DefaultResponse> ref,
            DiscoverParams params) async {
  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/discover/movie?$params',
      );
  ref.keepAlive();

  return DefaultResponse.fromJson(response.data);
});
