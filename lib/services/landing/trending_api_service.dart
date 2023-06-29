import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/landing/api_trending.dart';
import 'package:filmfinder/services/common/dio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<DefaultResponse, AvailableTrendingType>
    trendingApiService =
    FutureProvider.autoDispose.family(trendingApiServiceImpl);

Future<DefaultResponse> trendingApiServiceImpl(
    AutoDisposeFutureProviderRef<DefaultResponse> ref,
    AvailableTrendingType trending) async {
  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/trending/movie/${trending.name}',
      );
  ref.keepAlive();

  return DefaultResponse.fromJson(response.data);
}
